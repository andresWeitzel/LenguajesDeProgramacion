#PASS nos devuelve nos ahorra problemas de identacion, no ejecuta el bucle
#CONTINUE nos salta una siguiente funcion

for letra in "Python":

    if letra=="h":
        continue

    print("Viendo la letra: "+letra)

print("---------------------------------")

nombre="Proteina Tubulina"
contador=0

for i in nombre:

    if i==" ":
        continue      #Aqui ignora el espacio
    contador+=1

print(contador)