# Archivo de conexión separado: conexion_db.py

from sqlalchemy import create_engine
import pandas as pd

def get_connection():
    engine = create_engine(
        'mysql+pymysql://admin:AmezziTech19@dashboarddb.cul1rokptvup.us-west-1.rds.amazonaws.com:3306/tienda_ventas'
    )
    return engine

def obtener_datos():
    engine = get_connection()
    query = "SELECT * FROM ventas"
    df = pd.read_sql(query, engine)
    return df
