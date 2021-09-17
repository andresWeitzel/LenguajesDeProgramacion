
package matematicos;


public class Fibonacci {
    
    public static void main(String[] args) {
        
         int[] cantidadNumeros=new int[10];
         int numeroAnterior=0;
         int numeroActual=1;
         int numeroSiguiente=1;
         int contador;
         
         for(contador=1 ; contador < cantidadNumeros.length;  contador++){
              
             numeroSiguiente=numeroActual + numeroAnterior;
             
             numeroAnterior=numeroActual;
             
             numeroActual=numeroSiguiente;
             
             System.out.println(numeroActual);
         }
         
         
        
    }

}
