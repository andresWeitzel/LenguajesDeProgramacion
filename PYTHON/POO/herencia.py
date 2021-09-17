"""
PYTHON NOS PERMITE LA HERENCIA MULTIPLE


"""


class Vehiculos():

    def __init__(self,marca,modelo):

        self.marca=marca
        self.modelo=modelo
        self.enmarcha=False
        self.acelera=False
        self.frena=False


    def arrancar(self):
        self.enmarcha=True

    def acelerar(self):
         self.acelera=True

    def frenar(self):
         self.frena=True

    def estado(self):
         print("Marca: ", self.marca, "\nModelo: ", self.modelo, "\nEn Marcha: ", self.enmarcha, "\nAcelerando: ", self.acelera, "\nFrenando: ", self.frena)

print("-------HEREDAREMOS LOS METODOS DE LA CLASE VEHICULOS A LAS DEMAS CALSES----")


class Furgoneta(Vehiculos):

    def carga(self,cargar):
        self.cargado=cargar

        if(self.cargado):
            return "La furgoneta esta cargada"
        else:
            return "La furgoneta no esta cargada"




class Moto(Vehiculos):#Aca le declaramos de que clase  va a heredar los metodos

    #Creremos un comportamineto en esta clase que nos permita hacer la willy
    hacemelawilly=""

    def willy(self):
        self.hacemelawilly="Voy haciendo la willy"

    def estado(self):#sobreescribe al metodo estado de la clase padre
         print("Marca: ", self.marca, "\nModelo: ", self.modelo, "\nEn Marcha: ", self.enmarcha, "\nAcelerando: ", self.acelera, "\nFrenando: ", self.frena, "\n", self.hacemelawilly)

class VehiculosElectricos(Vehiculos):

    def __init__(self,marca,modelo):

       super().__init__(marca,modelo)#Funcion super() va a llamar al constructor de la clase padre y pasarle parametros a este

       self.autonomia=100

    def cargarenergia(self):
        self.cargando=True



class BicicletaElectrica(VehiculosElectricos,Vehiculos):#aCa utilizamos la herencia multiple.Esta clase hereda todos los metodos y todas las propiedades de las dos clases

    pass

print("----Bicicleta-----")
mibici=BicicletaElectrica("bmx","saarasa")#Cuando hay herencia multiple se da preferencia al constructor de la primera clase
mibici.estado()

print("----Moto-----")


mimoto=Moto("Honda","CBR")#Como instanciamos la clase tambien hederamos el constrctor y debemos pasarle los parametros("marca","modelo")


mimoto.willy()

mimoto.estado()#llamamos al metodo estado de la clase vehiculo




print("----Furgo-----")

mifurgoneta=Furgoneta("Renault","Kangoo")#como hereda el constructor de la clase vehiculos hay que pasarle los parametros correspondientes

mifurgoneta.arrancar()

mifurgoneta.estado()

print(mifurgoneta.carga(True))#Con el true le indico que esta cargada


