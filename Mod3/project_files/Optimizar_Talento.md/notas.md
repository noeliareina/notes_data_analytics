

# eliminamos las columnas que no son de nuestro interés usando el método '.drop()'
# pasándolo una lista con las columnas que queremos eliminar
# axis = 1 porque los nombres que le hemos pasado en la lista corresponden a las columnas
# inplace = True porque queremos que los cambios realizados se sobreescriban en el DataFrame

df_cat.drop(['cons.price.idx', 'cons.conf.idx', 'euribor3m', 'nr.employed' , 'date'], axis = 1, inplace=True)

# chuequeamos como se ha quedado el DataFrame y vemos que ya lo tenemos preparado para poder evaluar cuales son sus valores únicos ('.unique()') y sus frecuencias ('.value_counts()')

df_cat.head()




# creamos una variable con los nombres de las columnas del DataFrame de las variables categóricas utilizando el método '.columns'

columnas_cat = df_cat.columns
print(f"Las columnas del DataFrame de variables categóricas son {columnas_cat}")

# empezamos a iterar por cada una de las columnas para sacar sus valores únicos y sus frecuencias

for columna in columnas_cat:
    print(f" \n----------- ESTAMOS ANALIZANDO LA COLUMNA: '{columna.upper()}' -----------\n")
    print(f"Sus valores únicos son: {df_cat[columna].unique()}\n")
    print(f"Las frecuencias de los valores únicos de las categorías son: {df_cat[columna].value_counts()} ")



# Métodos para identificar los duplicados en Pandas
En Pandas, solo podemos identificar los duplicados usando el método .duplicated() el cual va a identificar las filas duplicadas en un DataFrame y devolverá una Serie booleana que indica True para las filas duplicadas y False para las filas únicas.

df.duplicated(subset=['columna1', 'columna2'], keep=????)