
for i in range(8,20,2):#cuenta del 8 al 20 y salta en tres
	print(f"valor de la variable {i}")#f nos permiten crear formatos de forma diferente(concatena el texto con el valor dentro de la llave)
print("--------Validacion email-----------------")

valido=False
email=input("Introduce tu email:")

for i in range(len(email)):#El len nos devuelve la longitud de los caracteres
	
	if email[i]=="@":
		valido=True


if valido:
	print("Email correcto")
else:
	print("Email incorrecto")			
