class Coche():

    def desplazamiento(self):
        print("Me desplazo utilizando cuatro ruedas")


class Moto():

    def desplazamiento(self):
        print("Me desplazo utilizando dos ruedas")

class Camion():

    def desplazamiento(self):
        print("Me desplazo utilizando seis ruedas")

#---USAMOS MISMO METODOS PERO DE DIFERENTES CLASES sin POLIMORFISMMOS
""" miVehiculo=Moto()
miVehiculo.desplazamiento()

miVehiculo2=Coche()
miVehiculo2.desplazamiento()

miVehiculo3=Camion()
miVehiculo3.desplazamiento() """

#AHORA CREAREMOS UNA FUNCION CON POLIMORFISMO
def desplazamientoVehiculo(vehiculo):
    vehiculo.desplazamiento()

miVehiculo=Camion()
desplazamientoVehiculo(miVehiculo)

miVehiculo=Coche()
desplazamientoVehiculo(miVehiculo)

