from flask import Blueprint, request, jsonify, current_app, send_file
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_required,login_user,current_user,logout_user
from werkzeug.utils import secure_filename
import uuid as uuid
import os
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import io
from flasker.app import db
from flasker.models import Users
from flasker.forms import UserForm,LoginForm
from flasker.utils.sqlconnect import connectmysql,getCursor,getDf,getXY
import matplotlib
from sklearn.cluster import KMeans, DBSCAN
from sklearn.metrics import silhouette_score, pairwise_distances_argmin_min
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import OneHotEncoder
from sklearn.pipeline import Pipeline

matplotlib.use('Agg')
# Create a Blueprint for user routes
api_bp = Blueprint('api', __name__)


@api_bp.route('/dtpredict', methods=['POST'])
def dtpredict():
    """dt_predictor = current_app.dt_predictor
    input_data = request.json.get('input_data', [])
    if not input_data:
        return jsonify({"erreur": "Pas de données fournies"}), 400
    try:
        prediction = dt_predictor.predict(input_data)
        print(prediction)
        return jsonify({"prediction":   {
                "outcome": prediction.outcome.tolist()[0],
                "confidence": prediction.confidence,
                "metric_name":prediction.metric_name
            }}), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500"""
    return jsonify({"response": "Hello"}), 200
    

@api_bp.route('/trainkmeanclustering', methods=['POST'])   
def kmeans():
    kmc=current_app.kmc_predictor
    n= request.json.get('n')
    rs=request.json.get('rs')
    if n is None or rs is None:
            return jsonify({"error": "Pas de données fournies"}), 400
    res=kmc.train(n,rs)
    print(res)
    return jsonify({"n": n, "rs": rs, "message": "Réussite"}), 200

@api_bp.route('/api/generate-chart', methods=['POST'])
def generatechart():
    try:
        chart_type = request.form.get('chartType')
        sql_query = request.form.get('sql')
        if not sql_query or not chart_type:
            return jsonify({'erreur': 'SQL et type de graphique sont requis'}), 400
        #print(sql_query)
        cursor,connection = getCursor(current_app)
        df = getDf(cursor,sql_query)
        #connection = connectmysql(current_app)  # Replace with your database connection function
        #df = pd.read_sql(sql_query, connection)
        connection.close()
        #connection.dispose()
        numeric_cols = df.select_dtypes(include=np.number).dropna()
        numeric_cols= numeric_cols.loc[:, numeric_cols.std() > 0]
        correlation_matrix = numeric_cols.corr()
        if chart_type == 'Heatmap':
            plt.figure(figsize=(10, 8))
            sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm', fmt='.2f')
            plt.title('Correlation Heatmap')
        elif chart_type == 'Density Contour':
            if not df.shape[1]==3:
                return jsonify({'erreur': 'Cette option requiert 3 colonnes'}), 400
            x = df.columns[0]
            y = df.columns[1]
            hue = df.columns[2]
            sns.set_theme(style="ticks")
            plt.figure(figsize=(10, 8))
            g=sns.jointplot(
                data=df.dropna(),
                x=x, y=y, hue=hue,
                kind="kde",
            )
            x_min, x_max = df[x].min()-5, df[x].max()/7
            y_min, y_max = df[y].min()-5, df[y].max()/7
            g.ax_joint.set_xlim(x_min, x_max)
            g.ax_joint.set_ylim(y_min, y_max)
            plt.title('Density Contour')

        elif chart_type == 'Mix' or chart_type == 'Hexagon':
            if not df.shape[1]==2:
                return jsonify({'erreur': 'Cette option requiert 2 colonnes'}), 400
            x_col = df.columns[0]
            y_col = df.columns[1]
            x=df.iloc[:, 0]
            y=df.iloc[:, 1]
            f, ax = plt.subplots(figsize=(6, 6))
            if chart_type== 'Hexagon':
                sns.jointplot(x=x, y=y, kind="hex", color="#4CB391")
                plt.title('Hexagon Plot')
            else:
                sns.scatterplot(x=x, y=y, s=5, color=".15")
                sns.histplot(x=x, y=y, bins=50, pthresh=.1, cmap="mako")
                sns.kdeplot(x=x, y=y, levels=5, color="w", linewidths=1)
                plt.title('Mixed Graph')
        else:
            return jsonify({'error': f'Unsupported chart type: {chart_type}'}), 400

        img_bytes = io.BytesIO()
        plt.savefig(img_bytes, format='png')
        img_bytes.seek(0)
        plt.close()
        return send_file(img_bytes, mimetype='image/png', as_attachment=False)

    except Exception as e:
        return jsonify({'error': str(e)}), 500



@api_bp.route('/api/clustering', methods=['POST'])
def clustering():
    try:
        # Get JSON data from the request
        data = request.get_json()

        # Extract form data
        algorithme = data.get('algorithme')
        mesure = data.get('mesure')
        categories_columns = data.get('categoriesColumns').split(',')
        numerical_columns = data.get('numericalColumns').split(',')
        sql_query = data.get('sqlQuery')
        random_state = int(data.get('randomState'))
        nombre_clusters = int(data.get('nombreClusters'))
        cursor,connection = getCursor(current_app)
        df = getDf(cursor,sql_query)
        df=df.dropna()
        preprocessor = ColumnTransformer(
            transformers=[
                ('cat', OneHotEncoder(), categories_columns),
                ('num', 'passthrough', numerical_columns)
            ])

        if algorithme == 'K-Means':
            model = KMeans(n_clusters=nombre_clusters, random_state=random_state)
        elif algorithme == 'DBSCAN':
            model = DBSCAN()
        else:
            return jsonify({'error': 'Invalid algorithm'}), 400
        
        pipeline = Pipeline(steps=[('preprocessor', preprocessor), ('model', model)])
        pipeline.fit(df)
        df['Cluster'] = pipeline.predict(df)

        result_measure = None
        if mesure == 'Silhouette':
            result_measure = silhouette_score(df[numerical_columns], df['Cluster'])
        elif mesure == 'Inertie':
            result_measure = model.inertia_ if hasattr(model, 'inertia_') else 'Not applicable for DBSCAN'
        else:
            result_measure = 'Measure not implemented' 
        result = {
            'data': df.to_dict(orient='records'),
            'measure': result_measure
        }
        return jsonify(result)
    except Exception as e:
        return jsonify({'error': str(e)}), 500