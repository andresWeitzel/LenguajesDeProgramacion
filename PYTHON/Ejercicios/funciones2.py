def suma(valor1,valor2,valor3):
	return valor1+valor2+valor3
resultado=suma(10,20,30)
print(resultado)


def div(v1,v2):
	return v1/v2
resultado2=div(v2=10,v1=2)#asigno valor argumento de otra forma al reves
print(resultado2)

def mult(v1,v2):
	return v1*v2
resultado3=mult(12,27)
print(resultado3)

def mult_valores():
	return "String",1,True,23.2
string,entero,boleeano,flotante=mult_valores()#toma por posicion por defecto los valores del return
print(string)
print(entero)
print(boleeano)
print(flotante)		

mi_variable=mult
resultado4=mi_variable(6,8)
print(resultado4)

print("-------------------------")
#funciones dentro de otra
def mostrar_resultado(funcion):
	print(funcion(23,8))
mostrar_resultado(mult)#llama a la fun mult
print(mostrar_resultado)	

