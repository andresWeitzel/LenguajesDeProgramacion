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
public class Camioneta extends Vehiculo{
    
    private float tara;
    private float bruto;
    private boolean dobleTraccion;

    /**
     * Constructor Camioneta()
     */
    public Camioneta() {
        this.tara=0;
        this.bruto=0;
        this.dobleTraccion=false;
    }

    /** 
     * Constructor Camioneta(float tara, float bruto, boolean dobleTraccion, String propietario, int cilindradas)
     * Invoca al constructor padre super(propietario, cilindradas);
     */
    public Camioneta(float tara, float bruto, boolean dobleTraccion, String propietario, int cilindradas) {
        super(propietario, cilindradas);
        this.tara = tara;
        this.bruto = bruto;
        this.dobleTraccion = dobleTraccion;
    }
    
    //Getters and Setters

    public float getTara() {
        return tara;
    }

    public void setTara(float tara) {
        this.tara = tara;
    }

    public float getBruto() {
        return bruto;
    }

    public void setBruto(float bruto) {
        this.bruto = bruto;
    }

    public boolean isDobleTraccion() {
        return dobleTraccion;
    }

    public void setDobleTraccion(boolean dobleTraccion) {
        this.dobleTraccion = dobleTraccion;
    }
    
    /**
     * Method toString()
     */
    @Override
    public String toString() {
        return  "Camioneta{" + super.toString()+ "tara=" + tara + ", bruto=" + bruto + ", dobleTraccion=" + dobleTraccion + '}';
    }
    
    
    
    
    
}
