
from sklearn.linear_model import LinearRegression
from typing import List, Tuple, Optional, cast
import numpy as np
from numpy import float64
from numpy.typing import NDArray
from sklearn.linear_model import LogisticRegression  # type: ignore
 # type: ignore
from sklearn.tree import DecisionTreeClassifier
from flasker.regressors.predictor import Prediction, Predictor
import pymysql
import pandas as pd
from sklearn.preprocessing import OneHotEncoder 
from sklearn.model_selection import train_test_split
from sklearn.metrics import r2_score, mean_squared_error, accuracy_score

class LogisticRegressionPredictor(Predictor):
    def __init__(self, model: LogisticRegression, encoder, metric, 
                 metric_name: str, cols1: List[str], cols2: List[str], cols3: List[str], req,categories) -> None:
        super().__init__(model, encoder, metric, metric_name, cols1, cols2, cols3, req,categories)
