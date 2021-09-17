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
public class Autor extends General {
    
    private String observacion;
    private int librosPublicados;
    
    //Constructor Autor()
    public Autor() {
    }
    
    
    //Constructor Autor(String,int,int,String)
    public Autor(String observacion, int librosPublicados, int codigo, String nombre) {
        super(codigo, nombre);
        this.observacion = observacion;
        this.librosPublicados = librosPublicados;
    }
    
    //Getters and Setters
    public String getObservacion() {
        return observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public int getLibrosPublicados() {
        return librosPublicados;
    }

    public void setLibrosPublicados(int librosPublicados) {
        this.librosPublicados = librosPublicados;
    }
    
    //Method toString()

    @Override
    public String toString() {
        return "Autor{" + "observacion=" + observacion + ", librosPublicados=" + librosPublicados + '}';
    }
    
    

    
    
    
}
