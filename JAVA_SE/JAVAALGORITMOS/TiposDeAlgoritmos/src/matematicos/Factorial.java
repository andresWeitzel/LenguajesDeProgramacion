
package matematicos;

import java.util.Scanner;


public class Factorial {
    public static void main(String[] args) {
        
        System.out.println("Introduzca el numero deseado: ");
        int  numero=new Scanner(System.in).nextInt();
        
        System.out.println("El factorial de "+numero+" es "+metodoFactorial(numero));
        
        
    }
    
    //Metodo estatico recursivo
    public static int metodoFactorial(int num){
        
        if(num > 0){
            
            int valor= num * metodoFactorial(num -1);
       
            return valor;
        }
        return  1;
    }
}
