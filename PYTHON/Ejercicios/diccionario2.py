#almacena tupl,lista,etc
#este no se rige por un indice
#las claves deben ser inmutables

diccionario={'a':55}#la "clave" a tiene almacenado el valor 55
print(diccionario)

diccionario1={ 5:"Esto es un string"}
print(diccionario1)

#los diccionarios pueden incrementarse o decrem
diccionario1["c"]="Nuevo string"
print(diccionario1)

#modificar un valor
diccionario1[5]="Esto es un string modificado"
print(diccionario1)

del diccionario['a']#Borrar datos
print(diccionario)

print("-----------Usando Métodos----------")
#metodo get, me regresa lo que pida
valor=diccionario1.get("ñ","No hay ninguna letra ñ")
print(valor)
valor=diccionario1.get("e","Si si, hay 'e'")
print(valor)

llaves=diccionario1.keys()#nos regresa el indice de los valores
print(llaves)

llaves=list(diccionario1.keys())
print(llaves)#indice de los valores de la lista puros

llaves=list(diccionario1.values())#valores de la lista
print(llaves)

llaves=tuple(diccionario1.values())#valores de la lista convertido a tupla
print(llaves)

diccionario2={"z":23,"w":88}
#ATENTI, ampliando dicc 1 utilizando el dicc 2
diccionario1["w"]=diccionario2["w"]
diccionario1["z"]=diccionario2["z"]
print(diccionario1)

#Lo mismo anterior de forma gral y mas sencillo
diccionario1.update(diccionario2)
print(diccionario1)


