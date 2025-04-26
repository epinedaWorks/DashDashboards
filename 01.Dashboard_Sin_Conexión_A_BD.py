import pandas as pd
import numpy as np
import dash
from dash import dcc, html
import plotly.express as px
import plotly.graph_objects as go

# Crear datos ficticios
np.random.seed(42)
dates = pd.date_range(start='2023-01-01', periods=100, freq='D')
categories = ['A', 'B', 'C']
data = {
    'date': dates,
    'category': np.random.choice(categories, size=100),
    'value': np.random.randint(1, 100, size=100),
    'amount': np.random.uniform(10, 500, size=100)
}

df = pd.DataFrame(data)

# Calcular el promedio de valores
average_value = df['value'].mean()

# Inicializar la aplicación Dash
app = dash.Dash(__name__)

# Crear las gráficas
fig_bar = px.bar(df, x='category', y='value', title='Gráfica de Barras', color='category')
fig_pie = px.pie(df, names='category', values='value', title='Gráfica de Pastel')
fig_gauge = go.Figure(go.Indicator(
    mode="gauge+number",
    value=average_value,
    title={'text': "Promedio de Valores"},
    gauge={'axis': {'range': [None, 100]}}
))
fig_big_number = go.Figure(go.Indicator(
    mode="number",
    value=average_value,
    title={'text': "Promedio de Valores"}
))
fig_time_series = px.line(df, x='date', y='value', title='Serie de Tiempo')
fig_trend_lines = px.scatter(df, x='date', y='value', trendline="ols", title='Líneas de Tendencias')

# Definir el layout del dashboard
app.layout = html.Div(children=[
    html.H1(children='Dashboard con Datos Ficticios'),

    html.Div(children='''
        Este es un dashboard de ejemplo con datos ficticios.
    '''),

    html.Div([
        html.Div([dcc.Graph(id='graph_bar', figure=fig_bar)], className="six columns"),
        html.Div([dcc.Graph(id='graph_pie', figure=fig_pie)], className="six columns"),
    ], className="row"),

    html.Div([
        html.Div([dcc.Graph(id='graph_gauge', figure=fig_gauge)], className="six columns"),
        html.Div([dcc.Graph(id='graph_big_number', figure=fig_big_number)], className="six columns"),
    ], className="row"),

    html.Div([
        html.Div([dcc.Graph(id='graph_time_series', figure=fig_time_series)], className="six columns"),
        html.Div([dcc.Graph(id='graph_trend_lines', figure=fig_trend_lines)], className="six columns"),
    ], className="row")
])

if __name__ == '__main__':
   #app.run_server(debug=True)
   app.run(debug=True)