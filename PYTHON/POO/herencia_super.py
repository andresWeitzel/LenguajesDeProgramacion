#Crearemos una clase persona y unna clase empleados!!
#PRINCIPIOS DE SUSTITUCION:Un objeto de la subclase siempre es un objeto de la superclase,(EJ:UN EMPLEADO ES SIEMORE UNA PERSONA,PERO NO SIEMPRE UNA PERSONA DEBE SER UN EMPLEADO(ESTO ES EL DISEÑO DE HERENCIA))


class Persona():

    def __init__(self,nombre,edad,lugar_de_residencia):
        self.nombre=nombre
        self.edad=edad
        self.lugar_de_residencia=lugar_de_residencia

    def descripcion(self):
        print("Nombre: ",self.nombre," Edad: ",self.edad, "Residencia: ",self.lugar_de_residencia)



class Empleado(Persona):

    def __init__(self,salario,antiguedad,nombre_empleado,edad_empleado,residencia_empleado):

        super().__init__(nombre_empleado,edad_empleado,residencia_empleado)#El super(),llama al metodo de la clase padre ,al metodo init, auqi les pasamos los parametros que me pide y almacena la info en la clase correspondiente

        self.salario=salario
        self.antiguedad=antiguedad

    def descripcion(self):

        super().descripcion()#Va ala metodo de la clase padre, ejecutarlo en su totalidad, nos ahorramos tener que iniciar todas las variables d clase y repetir lineas de codigo

        print("Salario: ",self.salario,"Antiguedad: ",self.antiguedad)



Manuel=Empleado(1500,15,"Manuel",55,"Colombia")
Manuel.descripcion()
print(isinstance(Manuel,Empleado))#PREGUNTA SI ES CIERTO QUE PERTENECE A UNA CLASE CONCRETA Y DEVUELVE TRUE SI LO ES O FALSE SI NO LO ES
print(isinstance(Manuel,Persona))

Manuel=Persona("Manuel",55,"Colombia")#L ecambiamos la clase a la que pertenece para comprobar su veracidad
Manuel.descripcion()
print(isinstance(Manuel,Empleado))#Una persona no siempre es un empleado
print(isinstance(Manuel,Persona))
