from typing import List
from sklearn.ensemble import RandomForestRegressor
from flasker.regressors.predictor import Predictor
from flasker.regressors.commonFunc import train_predictor

class RandomForestRegressorPredictor(Predictor):
    def __init__(self, model: RandomForestRegressor, encoder, metric, 
                 metric_name: str, cols1: List[str], cols2: List[str], cols3: List[str], req,categories) -> None:
        super().__init__(model, encoder, metric, metric_name, cols1, cols2, cols3, req,categories)

def train_random_forest_predictor(app):
    return train_predictor(app, RandomForestRegressorPredictor, RandomForestRegressor)
