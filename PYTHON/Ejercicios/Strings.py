mi_string="Hola!\n"

mi_string2="""este es un string \nque contiene\n  saltos de linea"""

print(mi_string)

print(mi_string2)

print("-----------------------------------------")
curso="Python"
profe="Andy"

msj_final="Este es un curso de "+curso+",dado por "+profe           #1
msj_final="Este es un curso de %s dado por %s "%(curso,profe)       #2
msj_final="Este es un curso de {} dado por {} ".format(curso,profe) #3


print(msj_final)


