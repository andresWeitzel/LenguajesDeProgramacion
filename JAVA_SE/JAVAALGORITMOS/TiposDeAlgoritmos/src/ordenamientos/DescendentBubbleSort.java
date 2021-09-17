
package ordenamientos;


public class DescendentBubbleSort {
    public static void main(String[] args) {
        
    
    
        int array[] = {8, 7, 5, 9, 4, 6, 3, 2, 4, 6, 45, 45, 7, 8, 34};
        int aux;
        boolean flag;

        
        System.out.println("\n============Array Desordenado de forma Descendente============\n");
          
        for(int i=0; i< array.length; i++){
            System.out.print(array[i] + ", ");
        }
        System.out.println("\n");
        
        
        //Ordenamos el array
        for (int i = 0; i < array.length; i++) {

            flag=true; 
            
            for (int j = 0;  j < (array.length)-1;  j++) {
                
                if(array[j] < array[j+1]){
                     
                    aux=array[j];
                    
                    array[j]=array[j+1];
                    
                    array[j+1]=aux;
                    
                   // System.out.print(array[j+1]+", ");
                    
                    flag=false;
                                   
                }
            }
            
            if(flag){
                
           break;
           
            }
           
        }
        
              
        System.out.println("\n============Array Ordenado============\n");
        
        
        for(int i=0; i< array.length; i++){
            System.out.print(array[i] + ", ");
        }
        
        
        
    }

}
        