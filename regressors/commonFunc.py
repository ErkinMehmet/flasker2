import pymysql
import pandas as pd
from sklearn.preprocessing import OneHotEncoder 
from sklearn.model_selection import train_test_split
from sklearn.metrics import r2_score, mean_squared_error, accuracy_score
from datetime import datetime
from sklearn.metrics import silhouette_score
from sklearn.cluster import KMeans
from sklearn.preprocessing import StandardScaler
import numpy as np
import joblib,uuid,os
from flask import url_for,current_app
from flasker.utils.sqlconnect import getCursor,getDf,getXY

    
def train_and_evaluate_model(model, x_train, y_train, x_test, y_test, eval_metric='r2_score',n_clusters=5):
    
    if not y_train is None:
        model.fit(x_train, y_train)
        y_pred = model.predict(x_test)
        if eval_metric == 'r2_score':
            metric_value = r2_score(y_test, y_pred)
        elif eval_metric == 'mse':
            metric_value = mean_squared_error(y_test, y_pred)
        elif eval_metric == 'accuracy':
            metric_value = accuracy_score(y_test, y_pred)
        else:
            raise ValueError(f"Unsupported evaluation metric: {eval_metric}")
        #save_path=os.path.join(os.path.join(current_app.root_path, 'static', 'models','Arbre de décision'),f"{uuid.uuid4().hex}.pkl")
        #joblib.dump(model, save_path)
        return model, metric_value, y_pred
    else:
        if isinstance(model, KMeans):
            instan=KMeans(n_clusters=5, random_state=42)
            instan.fit(x_train)
            y_pred = instan.predict(x_train)
            metric_value=0
        if eval_metric == 'Silhouette':
            metric_value = silhouette_score(x_train, y_pred)
        #save_path=os.path.join(os.path.join(current_app.root_path, 'static', 'models','K Means'),f"{uuid.uuid4().hex}.pkl")
        #joblib.dump(instan, save_path)
        return instan, metric_value, y_pred

def train_predictor(app,model_class,classifier,n_clusters=5):
    cursor,connection=getCursor(app)
    request="""select pt.paymenttypetitle,amount,TIMESTAMPDIFF(SECOND, p.paymentdate, p.createdat) as secondes,ot.title
        from payment p inner join
        payment_type pt on pt.ID=p.paymenttypeid
        inner join organization o
        on o.id=p.organizationid
        inner join organization_type ot
        on ot.id=o.organizationtypeid
        where paymenttypetitle in ('Chèque','Virement bancaire')"""
    test_size=0.2
    random_state=42
    cols1=['paymenttypetitle','title']
    cols2=['amount']
    cols3=['secondes']
    model = classifier()
    eval_metric='r2_score'
    encoder,x_train, x_test, y_train, y_test,categories=getXY(cursor,request,cols1,cols2,cols3,test_size,random_state,5)
    model, metric_value, y_pred=train_and_evaluate_model(model, x_train, y_train, x_test, y_test, eval_metric,5)
    cursor.close()
    connection.close()
    return model_class(model,encoder,metric_value,eval_metric,cols1,cols2,cols3,request,categories,n_clusters)

def train_predictor_c(app,model_class,classifier,n_clusters=5):
    cursor,connection=getCursor(app)
    request="""select o.ID, 
       o.operatingbudget, 
       ot.title, 
       s.startdate, 
       pt.autopayment,
       COALESCE(p2.paysum, 0) as paysum,
       COALESCE(p2.paycount, 0) as paycount,
       COALESCE(a2.c, 0) as articlecount,
       COALESCE(j2.c, 0) as jobcount,
       COALESCE(c2.c, 0) as coursecount,
       COALESCE(e2.c, 0) as eventcount,
       DATEDIFF(CURDATE(), s.startdate) as days_diff
        from organization o
        inner join organization_type ot
            on ot.id = o.organizationtypeid
        inner join subscription s
            on o.subscriptionid = s.id
        inner join payment_type pt
            on pt.id = s.paymenttypeid
        left join (
            select organizationid, 
                sum(amount) as paysum, 
                count(amount) as paycount 
            from payment p
            group by organizationid
        ) p2
            on p2.organizationid = o.id
        left join (
            select organizationid, 
                count(id) as c 
            from article a
            group by organizationid
        ) a2
            on a2.organizationid = o.id
        left join (
            select organizationid, 
                count(id) as c 
            from job j
            group by organizationid
        ) j2
            on j2.organizationid = o.id
        left join (
            select organizationid, 
                count(id) as c 
            from course c
            group by organizationid
        ) c2
            on c2.organizationid = o.id
        left join (
            select organizationid, 
                count(id) as c 
            from planned_event e
            group by organizationid
        ) e2
            on e2.organizationid = o.id
        where ot.title = 'MRC'
            """
    test_size=0.2
    random_state=42
    n_clusters=5
    cols1=['autopayment']
    cols2=['operatingbudget'#,'servedpopulation'
               ,'days_diff','paycount','paysum','articlecount','jobcount','coursecount','eventcount']
    model = classifier()
    eval_metric='silhouette'
    encoder,x_train, x_test, y_train, y_test,categories=getXY(cursor,request,cols1,cols2,[],test_size,random_state,n_clusters)
    model, metric_value, y_pred=train_and_evaluate_model(model, x_train, y_train, x_test, y_test, eval_metric, n_clusters)
    cursor.close()
    connection.close()
    return model_class(model,encoder,metric_value,eval_metric,cols1,cols2,[],request,categories,n_clusters)


def train_predictor_cust(app,model_class,classifier,req,test_size,random_state,cols1,cols2,cols3,eval_metric,n_clusters=5):
    cursor,connection=getCursor(app)
    model = classifier()
    encoder,x_train, x_test, y_train, y_test,categories=getXY(cursor,req,cols1,cols2,cols3,test_size,random_state,n_clusters)
    model, metric_value, y_pred=train_and_evaluate_model(model, x_train, y_train, x_test, y_test, eval_metric,5)
    cursor.close()
    connection.close()
    return model_class(model,encoder,metric_value,eval_metric,cols1,cols2,cols3,req,categories,n_clusters)