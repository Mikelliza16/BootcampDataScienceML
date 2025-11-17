# Bike Buyers 1000 — EDA (Bootcamp Data Analysis)

Proyecto individual de análisis exploratorio y verificación de hipótesis con el dataset **Bike Buyers 1000**.

## 🎯 Objetivo
Validar 6 hipótesis sobre la compra de bicicletas considerando variables sociodemográficas, económicas y de movilidad.

## 📂 Estructura
```
.
├── README.md
├── requirements.txt
├── .gitignore
└── src
    ├── data/               # datasets (no subir ficheros pesados)
    ├── notebooks/          # notebooks de pruebas
    ├── utils/              # funciones auxiliares
    └── memoria.ipynb       # notebook principal con narrativa
```
## 🔗 Dataset
- Kaggle: *Bike Buyers 1000*

## 🧪 Hipótesis
1) Género → Los hombres compran más bicicletas que las mujeres.
2) Edad → Los clientes más jóvenes compran más bicicletas.
3) Ingreso → A mayor ingreso, mayor probabilidad de compra.
4) Hijos → A más hijos, menor probabilidad de compra.
5) Coches → A más coches, menor probabilidad de compra.
6) Distancia al trabajo → A menor distancia, mayor probabilidad de compra.

## ▶️ Cómo ejecutar
```bash
python -m venv .venv
source .venv/bin/activate  # Windows: .venv\Scripts\activate
pip install -r requirements.txt
jupyter lab
```
Abre `src/memoria.ipynb` y sigue las celdas.

## 🧰 Tecnologías
- Python, pandas, numpy, matplotlib, seaborn, scipy, statsmodels
- Jupyter Notebook

## 📄 Licencia
Uso educativo.
