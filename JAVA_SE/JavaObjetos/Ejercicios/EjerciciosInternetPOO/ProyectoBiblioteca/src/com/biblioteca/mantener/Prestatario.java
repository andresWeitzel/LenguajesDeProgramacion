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
public class Prestatario extends General {
    
    private String direccion;
    private String telefono;
    private String ruc;

    //Constructor Prestatario()
    public Prestatario() {
    }
    
    //Constructor Prestatario(String,String,String,int,String)
    public Prestatario(String direccion, String telefono, String ruc, int codigo, String nombre) {
        super(codigo, nombre);
        this.direccion = direccion;
        this.telefono = telefono;
        this.ruc = ruc;
    }

    //Getters and Setters
    public String getRuc() {
        return ruc;
    }

    public void setRuc(String ruc) {
        this.ruc = ruc;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    
    //Method toString()

    @Override
    public String toString() {
        return "Prestatario{" + "direccion=" + direccion + ", telefono=" + telefono + ", ruc=" + ruc + '}';
    }
    
    
    
    
}

