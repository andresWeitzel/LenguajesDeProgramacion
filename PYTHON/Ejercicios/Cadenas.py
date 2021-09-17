mi_string="Hoa"
mi_string2="BYE"

print("-----------String de Formato--------------")  
result_string='{a} como estas, bueno {b}'.format(b=mi_string,a=mi_string2) #1
result_string='{} como estas, bueno {}'.format(mi_string,mi_string2)       #2

result_string1=result_string.lower()#Pasa a minuscula todos los caracteres
result_string2=result_string.upper()#Pasa todo a mayuscula
result_string3=result_string.title()#Pasa a modo formal
print(result_string1)
print(result_string2)
print(result_string3)

print("-----------String de Busqueda--------------")

              
x="Hoa"
y="BYE"
z='{} como estas, bueno {}'.format(x,y)
print(z)
pos=z.find('bueno')#Nos dice en que posicion empieza la determinada palabra
print(pos)
pos1=z.count('a')#Cuantas veces se repite la palabra c
print(pos1)

w=z.replace("a","ñ")#Reemlpaza caracteres
print(w)
s=z.split(" ")#Genera bloques por cada espacio
print(s)



