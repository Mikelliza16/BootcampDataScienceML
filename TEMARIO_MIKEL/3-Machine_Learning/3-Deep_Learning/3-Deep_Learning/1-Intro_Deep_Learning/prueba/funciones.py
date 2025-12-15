import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split


def leer(path):
    df = pd.read_csv(path)
    return df
def x_y(df, target):
    X = df.drop(columns = [target])
    y = df [target]
    return X, y

def test(X, y, test_size, semilla):
    X_train, X_test, y_train, y_test =train_test_split(X, y, test_size = test_size, random_state = semilla) 
    return X_train, X_test, y_train, y_test

def escalar(X_train, X_test):
    
    return