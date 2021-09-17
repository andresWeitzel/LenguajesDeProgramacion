package matematicos;

import java.util.Scanner;

public class TablaDeMultiplicar {

    public static void main(String[] args) {

        System.out.println("==Ingrese el numero a multiplicar==");
        int numero = new Scanner(System.in).nextInt();
         
        System.out.println("==Ingrese la cantidad de multiplicadores==");
        int multiplicadores = new Scanner(System.in).nextInt();
        int arrayMultiplicadores[] = new int[multiplicadores];
        
        int contador;
       
        int resultado;

        for (contador = 1; contador <= arrayMultiplicadores.length; contador++) {

            resultado = numero * contador;

            System.out.println(numero + " x " + contador + " = " + resultado);
        }

    }

}
