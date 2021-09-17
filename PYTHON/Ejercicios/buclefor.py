for i in ["Pildoras","Informaticas",3]:
	print("Hola",end=" ")#No haga salto de linea
print("--------------")
for y in "jasibkas@kahvk":
	print("Hoa", end=" ")#el for da vueltas por todos los caracteres que tenga

print("--------------")

contador=0	
miemail=input("Introduce tu direccion de email:")

for y in miemail:
	if(y=="@" or y=="."):
	 contador+=1	

if contador==2:
	print("Email con arroba y punto")
else:
	print("El email no posee arroba/punto")

print("--------------")

for u in range(5):#con el range creo una lista desde el 0 al 4
	print("Hola")
