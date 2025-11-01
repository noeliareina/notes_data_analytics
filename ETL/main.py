


from src import soporte_extraccion as sp
print("librerias importadas ")

# endpoint de la api
url = "https://jsonplaceholder.typicode.com/users"

# esta función llama a la api y me devuelve el json
datos = sp.llamada(url)
print("llamada a la api")

df = sp.transformacion(datos)
print("transformacion realizada")

df.to_csv("Datos_limpios.csv")