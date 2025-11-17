import pandas as pd
import matplotlib.pyplot as plt

def countplot_ratio(df: pd.DataFrame, cat_col: str, target_col: str):
    """Bar chart de tasa de 'Yes' por categoría del target."""
    rates = df.groupby(cat_col)[target_col].apply(lambda s: (s == 'Yes').mean()).sort_values(ascending=False)
    rates.plot(kind='bar')
    plt.title(f"Tasa de compra por {cat_col}")
    plt.ylabel("Proporción de 'Yes'")
    plt.xlabel(cat_col)
    plt.tight_layout()
    plt.show()
