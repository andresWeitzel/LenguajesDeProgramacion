#Yield from:simplificamos el codigo del generador cuando utilizamos varios bucles anidados

def devuelve_ciudades(*ciudades):#el asterisco es que recibe un numero n de elemnetos
    for elemento in ciudades:
        #for subelemento in elemento:#con este for le pedimos los subelementos(letras) de cada elemento(palabras,ej:madrid)
            #yield  subelemento#nos almacena los valores
            yield from elemento#aca nos escribe un "resumen" del elemento(primera letra de cada pais)

ciudades_devueltas=devuelve_ciudades("Madrid","barcelona","bsas")

print(next(ciudades_devueltas))
print(next(ciudades_devueltas))