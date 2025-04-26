# Archivo principal: app.py

import dash
from dash import dcc, html
import plotly.express as px
from conexion_db import obtener_datos

# Cargar datos desde RDS
df = obtener_datos()

# Inicializar la app
app = dash.Dash(__name__)

# Crear gráficas
fig_categoria = px.bar(df.groupby('categoria', as_index=False).sum(), 
                       x='categoria', y='monto',
                       title='Ventas por Categoría')

fig_region = px.pie(df, names='region', values='monto', 
                    title='Distribución de Ventas por Región')

fig_tiempo = px.line(df.groupby('fecha_compra', as_index=False).sum(),
                     x='fecha_compra', y='monto',
                     title='Tendencia de Ventas en el Tiempo')

# Layout de la app
app.layout = html.Div(children=[
    html.H1('Dashboard de Ventas', style={'textAlign': 'center'}),
    
    html.Div([
        dcc.Graph(figure=fig_categoria)
    ]),
    
    html.Div([
        dcc.Graph(figure=fig_region)
    ]),
    
    html.Div([
        dcc.Graph(figure=fig_tiempo)
    ]),
])

# Ejecutar servidor
if __name__ == '__main__':
    app.run_server(debug=True, port=8050)
