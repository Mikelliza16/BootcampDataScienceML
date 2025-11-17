
import pandas as pd
from scipy import stats

PARENTAL_EDU_ORDER = [
    "some high school", "high school", "some college",
    "associate's degree", "bachelor's degree", "master's degree"
]

def encode_parental_education_ordinal(series: pd.Series) -> pd.Series:
    order = {lvl: i for i, lvl in enumerate(PARENTAL_EDU_ORDER, start=1)}
    return series.str.lower().map(order)

def ttest_by_binary(df, score_col, group_col, group_pos):
    # t-test entre grupo == group_pos vs resto
    a = df.loc[df[group_col] == group_pos, score_col].dropna()
    b = df.loc[df[group_col] != group_pos, score_col].dropna()
    t, p = stats.ttest_ind(a, b, equal_var=False)
    return {"group": group_pos, "score": score_col, "mean_a": float(a.mean()), "mean_b": float(b.mean()), "t": float(t), "p": float(p)}

def ttest_two_groups(df, score_col, group_col, val_a, val_b):
    a = df.loc[df[group_col] == val_a, score_col].dropna()
    b = df.loc[df[group_col] == val_b, score_col].dropna()
    t, p = stats.ttest_ind(a, b, equal_var=False)
    return {"score": score_col, "A": val_a, "B": val_b, "mean_A": float(a.mean()), "mean_B": float(b.mean()), "t": float(t), "p": float(p)}

def anova_by_group(df, score_col, group_col):
    groups = [g[score_col].dropna().values for _, g in df.groupby(group_col)]
    f, p = stats.f_oneway(*groups)
    means = df.groupby(group_col)[score_col].mean().sort_values(ascending=False)
    return {"score": score_col, "F": float(f), "p": float(p), "means": {k: float(v) for k, v in means.to_dict().items()}}
