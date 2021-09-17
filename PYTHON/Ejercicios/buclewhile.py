edad=int(input("introduce la edad por favor: "))

while edad<18 or edad>120:
    print("Has introducido una edad incorrecta.Vuelva a intentarlo")
    edad = int(input("introduce la edad por favor: "))

print("Gracias por colaborar.Adelante")
print("Tienes: "+str(edad))


