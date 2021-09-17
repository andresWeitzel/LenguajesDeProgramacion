/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage.entities;

/**
 *
 * @author andre
 */
public class Auto extends Vehiculo {
    
    private boolean descapotable;
    private int pasajeros;
    
    
    /**
     * Constructor Auto()
     */
    public Auto(){
        this.descapotable=false;
        this.pasajeros=5;
       
    }
     /**
     * Constructor Auto(boolean descapotable, int pasajeros, String propietario, int cilindradas)
     * se invoca al constructor padre super(propietario, cilindradas)
     */
    public Auto(boolean descapotable, int pasajeros, String propietario, int cilindradas) {
        super(propietario, cilindradas);
        this.descapotable = descapotable;
        this.pasajeros = pasajeros;
    }
    
    //Getters and Setters

    public boolean isDescapotable() {
        return descapotable;
    }

    public void setDescapotable(boolean descapotable) {
        this.descapotable = descapotable;
    }

    public int getPasajeros() {
        return pasajeros;
    }

    public void setPasajeros(int pasajeros) {
        this.pasajeros = pasajeros;
    }

    /**
     * 
     * Method toString() 
     */
    @Override
    public String toString() {
        return "Auto{" + super.toString()+ "descapotable=" + descapotable + ", pasajeros=" + pasajeros + '}';
    }
    
    
    
    
    
   
    
    
    
}
