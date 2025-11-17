# 🛒 Análisis de Ventas de Supermercado (Myanmar)

## 📄 Descripción del proyecto
Este proyecto forma parte del módulo **Data Analysis** del Bootcamp y consiste en realizar un **análisis exploratorio de datos (EDA)** a partir de un dataset real obtenido de Kaggle:  
[Supermarket Sales Dataset](https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales)

El objetivo es **identificar diferencias en el desempeño de tres sucursales** de un supermercado ubicadas en Myanmar (Yangon, Mandalay y Naypyitaw). Cada registro corresponde a una transacción e incluye información sobre el tipo de cliente, el género, la categoría del producto, el método de pago, el importe de la venta, la calificación de satisfacción del cliente, etc. El objetivo principal es analizar cómo varían las ventas y el comportamiento de los clientes entre las diferentes ciudades, e identificar los factores que más influyen en los ingresos y en la rentabilidad del negocio. En definitiva, este análisis busca extraer conclusiones basadas en datos que sirvan para mejorar la estrategia comercial del supermercado, optimizar la gestión de sus sucursales y ofrecer una experiencia más adaptada al perfil de sus clientes.

## 🎯 Objetivos
- Comparar las ventas y rentabilidad entre ciudades.
- Analizar si el tipo de cliente, género o método de pago influyen en el gasto.
- Evaluar la satisfacción del cliente (calificación) por ciudad.
- Formular y contrastar hipótesis estadísticas.

---

## 🧠 Hipótesis principales


1. Las ventas totales varían entre las ciudades.  
2. Los clientes “Miembro” gastan más que los “Normales”.  
3. El método de pago influye en el monto de venta.  
4. Algunos productos resultan más rentables que otros. 
5. Los clientes que gastan más dan mejores calificaciones.

---

## 📊 Dataset
- Fuente: Kaggle (Supermarket Sales)
- Registros: 1000
- Columnas seleccionadas:  
  `["ID_Factura", "Ciudad", "Tipo_Cliente", "Genero", "Linea_Producto", "Cantidad", "Ventas", "Metodo_Pago", "Ingreso_Bruto", "Calificacion"]`
- Periodo: Enero – Marzo 2019

---

## 🧰 Tecnologías utilizadas
- Python 3.10  
- Pandas, NumPy  
- Matplotlib, Seaborn  
- SciPy (tests estadísticos)

---

## 📂 Estructura del repositorio
