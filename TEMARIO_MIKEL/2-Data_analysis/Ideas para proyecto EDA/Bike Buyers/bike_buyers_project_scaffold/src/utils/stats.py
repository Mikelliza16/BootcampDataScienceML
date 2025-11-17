import numpy as np
import pandas as pd
from scipy import stats

def chi2_table(df: pd.DataFrame, col_x: str, col_y: str):
    """Tabla de contingencia + test chi-cuadrado."""
    table = pd.crosstab(df[col_x], df[col_y])
    chi2, p, dof, exp = stats.chi2_contingency(table)
    return {"table": table, "chi2": chi2, "p": p, "dof": dof, "expected": exp}

def ttest_groups(df: pd.DataFrame, value_col: str, group_col: str, group_a, group_b):
    """t-test para dos grupos definidos explícitamente."""
    a = df.loc[df[group_col] == group_a, value_col].dropna()
    b = df.loc[df[group_col] == group_b, value_col].dropna()
    t, p = stats.ttest_ind(a, b, equal_var=False)
    return {"t": t, "p": p, "n_a": len(a), "n_b": len(b), "mean_a": a.mean(), "mean_b": b.mean()}

def mannwhitney_groups(df: pd.DataFrame, value_col: str, group_col: str, group_a, group_b):
    a = df.loc[df[group_col] == group_a, value_col].dropna()
    b = df.loc[df[group_col] == group_b, value_col].dropna()
    u, p = stats.mannwhitneyu(a, b, alternative="two-sided")
    return {"u": u, "p": p, "n_a": len(a), "n_b": len(b), "median_a": a.median(), "median_b": b.median()}
