/*
**SECCION C-HERENCIA,POLIMORFISMO,ABSTRACCION.**
                 **EJERCICIO01**

Implementacion del diagrama UML(carpeta mypackage.docs)

Implementar correctamente los constructores en la clase base y teniendo en cuenta la 
sobrecarga a ser implementada en las subclases.Los valores por defecto para los atributos son vacio para
propietario, vacio para marca, 2009 para modelo, 4 para cantidad de puertas, y 1800 para cilindradas.
Para auto son falso para descapotable y 5 para cantidad de puertas
Para camioneta son cero para tara y bruto , y falso para 4x4

Sobreescribir y sobrecargar correctamente el metodo toString() para las 3 clases.

Implementar la clases TestVehiculos(carpeta mypackage.docs)
En el metodo de la clase TesteVehicutos, cargar valores en los atributos de la clase y luego
imprimir cada atributo.Utilizar el metodo toString para imprimir y utilizar los conceptos de up-casting
y down-casting para el atributo hilux y corolla.

 */
package mypackage.test;

import mypackage.entities.Auto;
import mypackage.entities.Camioneta;
import mypackage.entities.Vehiculo;

/**
 *
 * @author andre
 */
public class TestVehiculo {

    /**
     * @param args the command line arguments
     */
    
        private Vehiculo hilux;
        private Vehiculo corolla;
        private Camioneta pickup;
        private Auto corsa;
        
        
    public static void main(String[] args) {
        // TODO code application logic here
        
        //Instanciamos un objeto de esta clase para luego usar los atributos(camioneta,auto,etc) y relacionar las clases
        TestVehiculo pruebaVehiculo=new TestVehiculo();
        
        //down-Casting, almacenar una instancia dentro de una clase inferior
        pruebaVehiculo.hilux=new Camioneta();
        pruebaVehiculo.hilux.setPropietario("Marcelo");
        pruebaVehiculo.hilux.setModelo(6000);       
        pruebaVehiculo.hilux.setMarca("Hilux");                
        pruebaVehiculo.hilux.setCantPuertas(4);               
        pruebaVehiculo.hilux.setCilindradas(7000);
        System.out.println(pruebaVehiculo.hilux);
        
        pruebaVehiculo.corolla=new Auto();
        pruebaVehiculo.corolla.setPropietario("Jose");
        pruebaVehiculo.corolla.setModelo(400);       
        pruebaVehiculo.corolla.setMarca("TAURUS");                
        pruebaVehiculo.corolla.setCantPuertas(2);               
        pruebaVehiculo.corolla.setCilindradas(12000);
        System.out.println(pruebaVehiculo.corolla);
        
        
}
}
