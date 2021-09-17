/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.figura.teste;

import com.biblioteca.mantener.Libro;

/**
 *
 * @author andre
 */
public class CargarLibro {
    /**
     * @param args the command line arguments
     */
    Libro libro1;
    
    public static void main(String[] args) {
        // TODO code application logic here
        
         //Libro libro1= new Libro();
         CargarLibro libro1=new CargarLibro();
         
         libro1.cargarLibro();
         libro1.imprimirLibro();
         System.out.println(libro1);


}
  
    //Method cargarLibro()
     public void cargarLibro(){
         
          libro1.setEdicion(12);
          libro1.setAñoPublicado(1996);
         
            
        }
     
     //Method imprimirLibro()
     public void imprimirLibro(){
         libro1.getEdicion();
         libro1.getAñoPublicado();
         
     }
        
    
}
