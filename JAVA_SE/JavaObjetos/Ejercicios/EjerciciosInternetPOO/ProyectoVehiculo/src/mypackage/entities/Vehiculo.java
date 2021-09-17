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
public class Vehiculo {
    
    private String propietario;
    private String marca;
    private int modelo;
    private int cantPuertas;
    private int cilindradas;
    
    
    /**
     *Constructor Vehiculo() 
     */
    public Vehiculo(){
        this.propietario=" ";
        this.marca=" ";
        this.modelo=2009;
        this.cantPuertas=4;
        this.cilindradas=1800;
        
    }
    
    /**
     * Constructor Vehiculo(String,int)
     */
    public Vehiculo(String propietario, int cilindradas) {
        this.propietario = propietario;
        this.cilindradas= cilindradas;
    }
    
    
    //Methods getters and Setters
     public String getPropietario() {
        return propietario;
    }

    public void setPropietario(String propietario) {
        this.propietario = propietario;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getModelo() {
        return modelo;
    }

    public void setModelo(int modelo) {
        this.modelo = modelo;
    }

    public int getCantPuertas() {
        return cantPuertas;
    }

    public void setCantPuertas(int cantPuertas) {
        this.cantPuertas = cantPuertas;
    }

    public int getCilindradas() {
        return cilindradas;
    }

    public void setCilindradas(int cilindradas) {
        this.cilindradas = cilindradas;
    }

    /**
     *Method encenderMotor() 
     */
    public void encenderMotor(){
        
    }
 
    /**
     *Method toString() 
     */
    @Override
    public String toString() {
        return "Vehiculo{" + "propietario=" + propietario + ", marca=" + marca + ", modelo=" + modelo + ", cantPuertas=" + cantPuertas + ", cilindradas=" + cilindradas + '}';
    }

   
    
    
}
