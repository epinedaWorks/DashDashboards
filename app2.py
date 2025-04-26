import dash
from dash import dcc, html, dash_table, Input, Output
import plotly.express as px
import plotly.graph_objects as go
from conexion_db import obtener_datos
import pandas as pd

# 1. Cargar datos
df = obtener_datos()
df['fecha_compra'] = pd.to_datetime(df['fecha_compra'])

# 2. Inicializar app
app = dash.Dash(__name__)

# 3. Layout
app.layout = html.Div([
    html.H1('Dashboard de Ventas', style={'textAlign': 'center'}),

    # Filtros
    html.Div([
        html.Div([
            html.Label('Seleccione Región:'),
            dcc.Dropdown(
                id='region-filter',
                options=[{'label': reg, 'value': reg} for reg in sorted(df['region'].unique())],
                value=None,
                placeholder="Todas las regiones"
            ),
        ], style={'width': '30%', 'display': 'inline-block', 'padding': '2px'}),

        html.Div([
            html.Label('Seleccione Categoría:'),
            dcc.Dropdown(
                id='categoria-filter',
                options=[{'label': cat, 'value': cat} for cat in sorted(df['categoria'].unique())],
                value=None,
                placeholder="Todas las categorías"
            ),
        ], style={'width': '30%', 'display': 'inline-block', 'padding': '2px'}),

        html.Div([
            html.Label('Seleccione Rango de Fechas:'),
            dcc.DatePickerRange(
                id='date-filter',
                min_date_allowed=df['fecha_compra'].min().date(),
                max_date_allowed=df['fecha_compra'].max().date(),
                start_date=df['fecha_compra'].min().date(),
                end_date=df['fecha_compra'].max().date()
            ),
        ], style={'width': '30%', 'display': 'inline-block', 'padding': '2px'}),
    ], style={'display': 'flex', 'flexWrap': 'wrap', 'justifyContent': 'center'}),

    html.Br(),

    # Fila 1: Indicadores
    html.Div([
        html.Div([
            dcc.Graph(id='gauge-total-ventas')
        ], style={'width': '33%', 'display': 'inline-block', 'padding': '2px'}),

        html.Div([
            dcc.Graph(id='indicador-max')
        ], style={'width': '33%', 'display': 'inline-block', 'padding': '2px'}),

        html.Div([
            dcc.Graph(id='indicador-min')
        ], style={'width': '33%', 'display': 'inline-block', 'padding': '2px'}),
    ], style={'display': 'flex', 'justifyContent': 'center'}),

    # Fila 2: Categoría y Región
    html.Div([
        html.Div([
            dcc.Graph(id='grafico-categoria')
        ], style={'width': '50%', 'display': 'inline-block', 'padding': '2px'}),

        html.Div([
            dcc.Graph(id='grafico-region')
        ], style={'width': '50%', 'display': 'inline-block', 'padding': '2px'}),
    ], style={'display': 'flex', 'justifyContent': 'center'}),

    # Fila 3: Tendencia
    html.Div([
        dcc.Graph(id='grafico-fecha')
    ], style={'width': '100%', 'padding': '2px'}),

    # Fila 4: Ventas por Mes + Tabla resumen en la misma fila
    html.Div([
        html.Div([
            dcc.Graph(id='grafico-mensual')
        ], style={'width': '70%', 'display': 'inline-block', 'padding': '2px'}),

        html.Div([
            dash_table.DataTable(
                id='tabla-resumen',
                style_table={'width': '100%', 'margin': 'auto'},
                style_cell={'textAlign': 'center', 'fontSize': 14},
                style_header={'fontWeight': 'bold'}
            )
        ], style={'width': '30%', 'display': 'inline-block', 'padding': '2px'}),
    ], style={'display': 'flex', 'justifyContent': 'center'}),
])

# 4. Callback
@app.callback(
    [Output('grafico-categoria', 'figure'),
     Output('grafico-region', 'figure'),
     Output('grafico-fecha', 'figure'),
     Output('gauge-total-ventas', 'figure'),
     Output('indicador-max', 'figure'),
     Output('indicador-min', 'figure'),
     Output('grafico-mensual', 'figure'),
     Output('tabla-resumen', 'data'),
     Output('tabla-resumen', 'columns')],
    [Input('region-filter', 'value'),
     Input('categoria-filter', 'value'),
     Input('date-filter', 'start_date'),
     Input('date-filter', 'end_date')]
)
def update_graphs(region, categoria, start_date, end_date):
    filtered_df = df.copy()

    if region:
        filtered_df = filtered_df[filtered_df['region'] == region]
    if categoria:
        filtered_df = filtered_df[filtered_df['categoria'] == categoria]
    if start_date and end_date:
        filtered_df = filtered_df[
            (filtered_df['fecha_compra'] >= pd.to_datetime(start_date)) &
            (filtered_df['fecha_compra'] <= pd.to_datetime(end_date))
        ]

    if filtered_df.empty:
        no_data = go.Figure()
        no_data.update_layout(title="Sin datos disponibles")
        empty_data = []
        empty_columns = [{'name': 'Métrica', 'id': 'Métrica'}, {'name': 'Valor', 'id': 'Valor'}]
        return no_data, no_data, no_data, no_data, no_data, no_data, no_data, empty_data, empty_columns

    # Gráficas principales
    ventas_por_categoria = filtered_df.groupby('categoria', as_index=False)['monto'].sum()
    ventas_por_fecha = filtered_df.groupby('fecha_compra', as_index=False)['monto'].sum()

    fig_categoria = px.bar(ventas_por_categoria, x='categoria', y='monto', title='Ventas por Categoría')
    fig_region = px.pie(filtered_df, names='region', values='monto', title='Distribución de Ventas por Región')
    fig_fecha = px.line(ventas_por_fecha, x='fecha_compra', y='monto', title='Tendencia de Ventas en el Tiempo')

    fig_gauge = go.Figure(go.Indicator(
        mode="gauge+number",
        value=filtered_df['monto'].sum(),
        title={'text': "Total Ventas ($)"},
        gauge={'axis': {'range': [0, max(1000, filtered_df['monto'].sum() * 1.2)]}}
    ))

    fig_max = go.Figure(go.Indicator(
        mode="number",
        value=filtered_df['monto'].max(),
        title={"text": "<b>Venta Máxima ($)</b>"},
        number={"font": {"size": 60}},
        domain={'x': [0, 1], 'y': [0, 1]}
    ))
    fig_min = go.Figure(go.Indicator(
        mode="number",
        value=filtered_df['monto'].min(),
        title={"text": "<b>Venta Mínima ($)</b>"},
        number={"font": {"size": 60}},
        domain={'x': [0, 1], 'y': [0, 1]}
    ))

    # Nueva Gráfica Ventas por Mes
    ventas_por_mes = filtered_df.copy()
    ventas_por_mes['mes'] = ventas_por_mes['fecha_compra'].dt.to_period('M').astype(str)
    ventas_mes_agg = ventas_por_mes.groupby('mes').agg({'monto': 'sum'}).reset_index()

    fig_mensual = px.bar(ventas_mes_agg, x='mes', y='monto', title='Ventas por Mes')

    # Nueva Tabla Resumen
    resumen_data = [
        {'Métrica': 'Ventas Totales ($)', 'Valor': f"{filtered_df['monto'].sum():,.2f}"},
        {'Métrica': 'Venta Promedio ($)', 'Valor': f"{filtered_df['monto'].mean():,.2f}"},
        {'Métrica': 'Venta Máxima ($)', 'Valor': f"{filtered_df['monto'].max():,.2f}"},
        {'Métrica': 'Venta Mínima ($)', 'Valor': f"{filtered_df['monto'].min():,.2f}"}
    ]
    resumen_columns = [{'name': 'Métrica', 'id': 'Métrica'}, {'name': 'Valor', 'id': 'Valor'}]

    return fig_categoria, fig_region, fig_fecha, fig_gauge, fig_max, fig_min, fig_mensual, resumen_data, resumen_columns

# 5. Ejecutar app
if __name__ == '__main__':
    app.run(debug=True, port=8050)
