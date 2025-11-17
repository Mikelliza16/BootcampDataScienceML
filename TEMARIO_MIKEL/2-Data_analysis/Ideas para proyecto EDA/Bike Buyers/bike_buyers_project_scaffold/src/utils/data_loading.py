from pathlib import Path
import pandas as pd

def load_bike_buyers(csv_path: str) -> pd.DataFrame:
    """Carga el CSV del dataset Bike Buyers y normaliza nombres de columnas."""
    p = Path(csv_path)
    if not p.exists():
        raise FileNotFoundError(f"No se encontró el archivo: {csv_path}")
    df = pd.read_csv(p)
    # Normaliza nombres de columnas
    df.columns = (
        df.columns.str.strip()
                  .str.replace(" ", "_", regex=False)
                  .str.replace("-", "_", regex=False)
                  .str.lower()
    )
    return df
