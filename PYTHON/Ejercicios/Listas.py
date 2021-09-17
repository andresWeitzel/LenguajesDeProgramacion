mi_lista=["String",15,15.6,True]
print(mi_lista)

mi_lista.append(265285)#toma el parametro que coloquemos y lo ingresa en la lista al final
print(mi_lista)

mi_lista.insert(1,"insert")#en la pos num 1 se inserta el string
print(mi_lista)

mi_lista.remove(15)#remueve los 15(int)
print(mi_lista)

mi_lista.pop()#remueve ultimo valor
print(mi_lista)

mi_lista1=[1,24,63,56,8,24,546,768,8988]
mi_lista1.sort()#ordena la lista
print(mi_lista1)
mi_lista1.sort(reverse=True)#lo ordena alreves
print(mi_lista1)


mi_lista1=[1,2,3,]
mi_lista2=[5,6,78,]

mi_lista1.extend(mi_lista2)#une listas
print(mi_lista1)