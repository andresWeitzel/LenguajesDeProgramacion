lista=[1,2,3,4,5,6,7,8,9,10]

for valor in lista:
	pass

nuevo_rango=range(34,872,4)#el ultimo parametro es con saltos

for valor in nuevo_rango:
	print(valor)	

indice=0

for valor in lista:
	print(valor, "Tiene el indice ", indice)
	indice+=1

print("-----------------------------")	


for valor in range(0,len(lista)):#len me regresa cuantos items hay dentro de la iteraccion(este caso lista)
	print(valor)

for valor in "hwiwiuwvk":
	pass#print(valor)	
print("-----------------------------")	

diccionario={"a":10,"b":20,"c":500}

for llave,valor in diccionario.items():
	print("La llave ",llave,"Tiene el valor de ",valor)
