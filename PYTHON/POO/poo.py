"""
-------------CONSTRUCCION DE LA PRIMERA CLASE--------------

CLASE EN OBJETOS: es un modelo donde se redactan las caractericas comunes


MODULARIZACION: una aplicacion puede estar compuesto de varias claeses
en la modularizacion algunas  clases se pueden reutilizar, en cambio las clases que no poseean modularizacion no se podra

ENCAPSULACION:el funcionamiento de una clase de un programa no se sabe del funcionamiento intyerno de otra clase, de igual forma todas las clases estan conectadas
para que funconene comom equipo, pero el funcionamiento interno no es accesible desde afuera

METODOS DE ACCESO: es la conexion de todas las clases, con estas conexiones funcionan como equipo las clases, las clases se conectan con los metodos pero hay ciertas caracteristicas de las clases que no saben las demas por que estan encapsuladas para que no se pueden modificar

NOMENCLATURA DEL PUNTO: todos los objetos instacias, usa el punto luego del nombre y seguido va el comportamineto del objeto

METODO=comportamiento de los objetos

HERENCIA: trasladar las propiedades y/o metodos de una clase padre o superclase a otra subclase
es la reutilizacion del codigo para crear objetos similares


.


"""

class Coche():
      #SEGUIDO DE LA CLASE COCHE CREAMOS EL CONSTRUCTOR.
    def __init__(self):#Construimos un constructor que se inicia siempre como:__init__ que significa la inicializacion del constructor

    #AHORA COLOCAMOS EN TODAS LAS PROPIEDADES LA PALABRA SELF PARA DISTINCION


       self.__largochasis=250 #primera propiedad deL CONSTRUCTOR de  la CLASE COCHE.
       self.__anchochasis=120
       self.__ruedas=4#los dos guiones luego del self indica ENCAPSULACION,esto determina que nno es accesible desde el exterior de la clase pero si lo sera dentro de la propia
       self.__enmarcha=False



    def arrancar(self,arrancamos):  #con el def se crea el metodo pertenecienta a la clase coche, el self es como un this, y con el arrancamos estamos obligados a pasarle un parametro
        self.__enmarcha=arrancamos  #el self hace referencia al propio objeta de la clase((osea micoche.enmarcha)) el arrancamos es el parametro que le pasaremos luego

        if(self.__enmarcha):
            chequeo=self.__chequeo_interno()


        if(self.__enmarcha and chequeo):#Aca comparamos el estado del coche
            return "El cocche esta en marcha"

        elif(self.__enmarcha and chequeo==False):
            return "Algo esta mal, no podemos arrancar"


        else:
            return "El coche no esta en marcha"


    def estado(self):#denominaremos un coomportamineto llamado estado, que es un metodo obveeo
        print("El coche tiene", self.__ruedas ,"ruedas.Un ancho de",self.__anchochasis,"cm y posse un largo de ",self.__largochasis,"cm")


    def __chequeo_interno(self):#encapsulamos el metodo para que se pueda usar dentro de la clase para que no se haga un chequeo interno cuando el uato este apagado, a modode  ejemplo
        print("Realizando chuequeo funcional")

        self.gasolina="ok"#Creamos variables del metodo chequeo_interno(self)
        self.aceite="ok"
        self.puertas="cerradas"

        if(self.gasolina=="ok" and self.aceite=="ok" and self.puertas=="cerradas"):
            return True
        else:
            return False


micoche=Coche()#creamos un objeto(micoche), hemos hecho una instanciacion de clase

print(micoche.arrancar(True))#aqui espera un parametro el metodo arrancar

micoche.estado()#nos dice que esta en marcha por que le cambiamos anteriormente el estado

print("-----Hasta ahora tenemos 4 comportamientos y dos estados(metodos) de la clase Coche-----")



print("")





print("------AHORA CREAREMOS EL SEGUNDO OBJETO-----")

micoche2=Coche()

#print("El largo del coche es:",micoche2.largochasis,"cm")
#print("El coche posee:",micoche2.ruedas,"ruedas")

#print(micoche2.arrancar(False))#aqui espera un parametro el metodo arrancar

#micoche2.__ruedas=5#aca no se podria cambiar la propiedad ruedas,fallo de encapsulacion

print(micoche.arrancar(False))

micoche2.estado()#Como no declaramos el metodo arrancar el estado del coche va a ser False por que lo declaramos al comienzo del progrma(osea va a estra parado)

















