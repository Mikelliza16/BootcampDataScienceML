# 🎓 Student Performance – Data Analysis Project

**Autor:** Tu nombre aquí  
**Bootcamp:** Data Analytics  
**Fecha:** Noviembre 2025  

---

## 🧭 Contexto del proyecto
El objetivo de este proyecto es analizar los factores que influyen en el rendimiento académico de los estudiantes.  
Para ello, se ha realizado un **Análisis Exploratorio de Datos (EDA)** sobre un dataset que recoge información demográfica, educativa y socioeconómica de los alumnos, junto con sus calificaciones en matemáticas, lectura y escritura.

Este proyecto forma parte del módulo de **Data Analysis** del bootcamp, y busca aplicar todas las competencias adquiridas en limpieza de datos, análisis estadístico y visualización.

---

## 🎯 Objetivos e hipótesis

El análisis se centra en contrastar las siguientes hipótesis:

1. **Nivel educativo de los padres**  
   → Un mayor nivel educativo de los padres se asocia con mejores calificaciones en los estudiantes.  

2. **Curso de preparación para el examen**  
   → Los estudiantes que completan el curso de preparación obtienen mejores calificaciones en todas las materias.  

3. **Diferencias por género**  
   → Las alumnas destacan en lectura y escritura, mientras que los alumnos lo hacen en matemáticas.  

4. **Grupo étnico y rendimiento académico**  
   → Los estudiantes pertenecientes a grupos étnicos con más recursos tienden a obtener mejores resultados académicos.

---

## 📊 Dataset

**Fuente:** archivo `Student_performance_data_.csv`  
**Número de registros:** ~1000 estudiantes  
**Número de variables:** 7–10  
**Variables destacadas:**
- `gender` – género del estudiante  
- `race/ethnicity` – grupo étnico  
- `parental level of education` – nivel educativo de los padres  
- `test preparation course` – si ha completado el curso de preparación  
- `math score`, `reading score`, `writing score` – calificaciones  

**Nota:** Los datos no contienen valores nulos y fueron obtenidos de una fuente educativa abierta (dataset de rendimiento académico de estudiantes).

---

## 🧹 Proceso de trabajo

1. **Carga y exploración inicial**  
   - Revisión del esquema, tipos de datos y valores nulos.  
2. **Limpieza y estandarización**  
   - Normalización de nombres de columnas.  
   - Codificación de variables categóricas cuando fue necesario.  
3. **Análisis exploratorio (EDA)**  
   - Estadísticos descriptivos y gráficos distribucionales.  
   - Análisis de correlaciones.  
4. **Contraste de hipótesis**  
   - Pruebas estadísticas: t-test y ANOVA.  
   - Interpretación de valores p y medias.  
5. **Visualización de resultados**  
   - Gráficos de caja, violines y barras con Seaborn y Matplotlib.  
6. **Conclusiones y recomendaciones**  
   - Síntesis de hallazgos y propuestas de mejora educativa.

---

## 🧠 Tecnologías utilizadas
- **Python 3.11+**
- **Pandas**, **NumPy** – manipulación de datos  
- **Matplotlib**, **Seaborn** – visualización  
- **SciPy**, **Statsmodels** – análisis estadístico  
- **Jupyter Notebook** – desarrollo y presentación del EDA  

---

## 🗂️ Estructura del repositorio
```
student_performance_project/
│
├── README.md
├── requirements.txt
├── presentation_outline.md
└── src/
    ├── data/
    │   └── Student_performance_data_.csv
    ├── notebooks/
    ├── utils/
    │   └── eda_utils.py
    └── memoria.ipynb
```

---

## 📈 Resultados esperados
- Identificar los factores socioeducativos que influyen en el rendimiento académico.  
- Visualizar diferencias significativas entre grupos.  
- Ofrecer conclusiones basadas en evidencia estadística (p-values, medias, varianzas).  

---

## 💬 Conclusión
El análisis de datos educativos puede ofrecer información valiosa para diseñar estrategias que mejoren la equidad y el rendimiento en el aula.  
Este proyecto demuestra cómo el **Data Analysis** puede aplicarse en el ámbito educativo para **tomar decisiones basadas en datos (data-driven decisions)**.

---

## 📎 Autor y contacto
**Tu nombre completo**  
📧 tuemail@ejemplo.com  
💼 [Tu perfil de LinkedIn o GitHub](https://github.com/tuusuario)
