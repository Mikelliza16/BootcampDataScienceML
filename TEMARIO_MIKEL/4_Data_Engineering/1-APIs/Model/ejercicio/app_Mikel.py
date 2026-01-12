



import os
import pickle
import pandas as pd
from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from sklearn.linear_model import LinearRegression

# --- CONFIGURACIÓN ---
app = Flask(__name__)

# Rutas absolutas
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DB_PATH = os.path.join(BASE_DIR, 'advertising.db')
MODEL_PATH = os.path.join(BASE_DIR, 'ad_model.pkl')

app.config['SQLALCHEMY_DATABASE_URI'] = f'sqlite:///{DB_PATH}'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

# --- BASE DE DATOS ---
class AdvertisingData(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    tv = db.Column(db.Float, nullable=False)
    radio = db.Column(db.Float, nullable=False)
    newspaper = db.Column(db.Float, nullable=False)
    sales = db.Column(db.Float, nullable=False)

    def to_dict(self):
        return {
            'tv': self.tv,
            'radio': self.radio,
            'newspaper': self.newspaper,
            'sales': self.sales
        }

# --- FUNCIONES AUXILIARES ---
def load_model():
    if os.path.exists(MODEL_PATH):
        with open(MODEL_PATH, 'rb') as f:
            return pickle.load(f)
    return None

def save_model(model):
    with open(MODEL_PATH, 'wb') as f:
        pickle.dump(model, f)

# --- INICIALIZACIÓN ---
with app.app_context():
    db.create_all()
    if load_model() is None:
        print("Creando modelo inicial dummy...")
        X_dummy = [[100, 50, 50], [200, 100, 20]]
        y_dummy = [15, 25]
        model = LinearRegression()
        model.fit(X_dummy, y_dummy)
        save_model(model)

# --- ENDPOINTS ---

@app.route('/', methods=['GET'])
def home():
    return "API de Ventas funcionando correctamente."

# 1. Ofrezca la predicción de ventas a partir de todos los valores de gastos en publicidad. (/predict)
@app.route('/predict', methods=['POST'])
def predict():
    try:
        data = request.get_json(force=True, silent=True)
        if not data or 'data' not in data:
            return jsonify({'error': 'JSON inválido. Falta la clave "data".'}), 400
            
        model = load_model()
        if not model:
            return jsonify({'error': 'El modelo no está disponible'}), 500

        prediction = model.predict(data['data'])
        return jsonify({'prediction': list(prediction)})
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    
# 2. Un endpoint para almacenar nuevos registros en la base de datos que deberás crear previamente.(/ingest)
@app.route('/ingest', methods=['POST'])
def ingest():
    try:
        data = request.get_json(force=True, silent=True)
        if not data or 'data' not in data:
            return jsonify({'error': 'JSON inválido. Falta la clave "data".'}), 400

        for record in data['data']:
            if all(k in record for k in ('tv', 'radio', 'newspaper', 'sales')):
                db.session.add(AdvertisingData(**record))
        
        db.session.commit()
        return jsonify({'message': 'Datos ingestados correctamente'}), 201
    except Exception as e:
        return jsonify({'error': str(e)}), 500

# 3. Posibilidad de reentrenar de nuevo el modelo con los posibles nuevos registros que se recojan. (/retrain)
@app.route('/retrain', methods=['POST'])
def retrain():
    try:
        records = AdvertisingData.query.all()
        if not records:
            return jsonify({'message': 'No hay datos para reentrenar'}), 400

        df = pd.DataFrame([r.to_dict() for r in records])
        X = df[['tv', 'radio', 'newspaper']]
        y = df['sales']

        new_model = LinearRegression()
        new_model.fit(X, y)
        save_model(new_model)

        return jsonify({'message': 'Modelo reentrenado exitosamente', 'r2_score': new_model.score(X, y)})
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    print("🚀 Arrancando servidor en el puerto 5000...")
    app.run(debug=True, host='0.0.0.0', port=5000)