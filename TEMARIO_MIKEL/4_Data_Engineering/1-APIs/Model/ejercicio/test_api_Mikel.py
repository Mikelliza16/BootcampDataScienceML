import requests

# 1. CORRECCIÓN: El puerto en app.py es 5000, no 8000.
BASE_URL = 'http://localhost:5000'

def test_ingest_endpoint():
    url = f'{BASE_URL}/ingest'
    
    # 2. CORRECCIÓN: app.py espera una lista de diccionarios con claves específicas,
    # no una lista de listas. El código "AdvertisingData(**record)" requiere claves.
    data = {
        'data': [
            {'tv': 100, 'radio': 100, 'newspaper': 200, 'sales': 3000},
            {'tv': 200, 'radio': 230, 'newspaper': 500, 'sales': 4000}
        ]
    }
    
    response = requests.post(url, json=data)
    
    # 3. CORRECCIÓN: app.py devuelve 201 (Created) al ingestar, no 200.
    assert response.status_code == 201
    # 4. CORRECCIÓN: El mensaje exacto en app.py es "ingestados", no "ingresados".
    assert response.json() == {'message': 'Datos ingestados correctamente'}

def test_predict_endpoint():
    url = f'{BASE_URL}/predict'
    
    # Aquí una lista de listas sí es válida porque model.predict lo acepta.
    data = {'data': [[100, 100, 200]]} 
    
    # 5. CORRECCIÓN: app.py define la ruta /predict solo para POST, no GET.
    response = requests.post(url, json=data)
    
    assert response.status_code == 200
    assert 'prediction' in response.json()

def test_retrain_endpoint():
    url = f'{BASE_URL}/retrain'
    
    # Retrain es POST en app.py, esto estaba correcto.
    response = requests.post(url)
    
    assert response.status_code == 200
    
    # 6. CORRECCIÓN: app.py devuelve también el 'r2_score', por lo que la comparación
    # exacta (==) fallaría. Validamos solo el mensaje y la clave extra.
    json_response = response.json()
    assert json_response['message'] == 'Modelo reentrenado exitosamente' # "exitosamente", no "correctamente"
    assert 'r2_score' in json_response