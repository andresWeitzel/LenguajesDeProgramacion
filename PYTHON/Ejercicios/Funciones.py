#Para funciom en python reservamos la palabra """def""" 

def factorial_numero():

	numero=5
	factorial=1

	while numero>0:
		factorial*=numero
		numero-=1

	print(factorial)

factorial_numero()		

print("-----------------")

def factorial_numero1(numero):#Nos permite ejecutar el factorial de cualquier numero
	
	factorial=1

	while numero>0:
		factorial*=numero
		numero-=1
	print(factorial)

factorial_numero1(3)#3ca le paso el valord del parametro(numero)		
factorial_numero1(8)