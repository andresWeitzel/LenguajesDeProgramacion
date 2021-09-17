/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.biblioteca.mantener;

/**
 *
 * @author andre
 */
public class General {
    
    private int codigo;
    private String nombre;

    //General()
    public General() {
        
    }
    //General(int,String)
    public General(int codigo, String nombre) {
        this.codigo = codigo;
        this.nombre = nombre;
    }
    
    
    //Method validarDatos()
    public boolean validarDatos(){
        return false;
    }
    
    
    //Getters and Setters
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    //Method toString()
    @Override
    public String toString() {
        return "General{" + "codigo=" + codigo + ", nombre=" + nombre + '}';
    }
     
    
}
