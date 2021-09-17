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
public class Libro extends General {
    
    private int edicion;
    private int añoPublicado;
    
    //Constructor Libro()
    public Libro() {
    }
    
    //Constructor Libro(int,int,int,String)
    public Libro(int edicion, int añoPublicado, int codigo, String nombre) {
        super(codigo, nombre);
        this.edicion = edicion;
        this.añoPublicado = añoPublicado;
    }
    
    //Method getStock()
    public int getStock(){
        return 0;
    }
    
    //Setters and Getters
    public int getEdicion() {
        return edicion;
    }

    public void setEdicion(int edicion) {
        this.edicion = edicion;
    }

    public int getAñoPublicado() {
        return añoPublicado;
    }

    public void setAñoPublicado(int añoPublicado) {
        this.añoPublicado = añoPublicado;
    }
    
    //Method toString()

    @Override
    public String toString() {
        return "Libro{" + "edicion=" + edicion + ", a\u00f1oPublicado=" + añoPublicado + '}';
    }
    
    
    
    
    
    
}
