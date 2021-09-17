print("-----Programa evaluacion de notas----")

nota_alumno=input()

def evaluacion(nota):
	valoracion="Aprobado"
	if nota<5:
		valoracion="Recursa"
		return valoracion

print(evaluacion(int(nota_alumno)))

	
