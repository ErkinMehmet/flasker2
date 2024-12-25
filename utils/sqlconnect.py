import pymysql
import pandas as pd
import numpy as np
from sklearn.preprocessing import OneHotEncoder 
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

def connectmysql(app):
    with app.app_context():
        connection_string = app.config['BDQM']
    if connection_string:
        components = connection_string.split(';')
        db_params = {}
        for component in components:
            if component:
                key, value = component.split('=', 1)
                db_params[key.strip()] = value.strip()
        host = db_params.get('SERVER')
        user = db_params.get('UID')
        password = db_params.get('PWD')
        database = db_params.get('DATABASE')
        return pymysql.connect(
            host=host,
            user=user,
            password=password,
            database=database
        )
    
def getCursor(app):
    connection=connectmysql(app)
    cursor = connection.cursor()
    return cursor,connection

def getDf(cursor,request):
    cursor.execute(request)
    rows = cursor.fetchall()
    columns = [desc[0] for desc in cursor.description]
    df = pd.DataFrame(rows, columns=columns)
    return df


def getXY(cursor,request,cols1,cols2,cols3,test_size=0.2,random_state=42,n_clusters=5):
    df = getDf(cursor,request)

    if len(cols1)>0:
        encoder = OneHotEncoder(handle_unknown='ignore', sparse_output=False)
        x1 = pd.DataFrame(encoder.fit_transform(df[cols1]), columns=encoder.get_feature_names_out(cols1))
        x2=df[cols2]
        x=pd.concat([x1, x2], axis=1)
        categories=dict()
        for col in cols1:
            categories[col] = df[col].unique()
    else:
        x=df[cols2]
        categories=None
        encoder=None
        """if 'startdate' in df.columns:
            df['date'] = pd.to_datetime(df['startdate'], errors='coerce')  # Handle invalid dates with 'coerce'
            today = datetime.today()
            df['days_diff'] = (today - df['date']).dt.days
        """
    if len(cols3)>0:
        y=df[cols3]
        x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=test_size, random_state=random_state)
        return encoder,x_train, x_test, y_train, y_test,categories
    else:
        scaler = StandardScaler()
        x_scaled = scaler.fit_transform(x)
        x_scaled = x_scaled[~np.isnan(x_scaled).any(axis=1)]
        scaled_df = pd.DataFrame(x_scaled, columns=x.columns)

        #x_train, x_test = train_test_split(x, test_size=test_size, random_state=random_state)
        return encoder,scaled_df, None, None,None,categories