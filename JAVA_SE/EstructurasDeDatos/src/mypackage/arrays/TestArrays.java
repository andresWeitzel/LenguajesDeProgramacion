package mypackage.arrays;

import java.util.Arrays;
import javax.swing.JOptionPane;

public class TestArrays {

    public static void main(String[] args) {

        int nums[] = new int[5];
        int i;

        for (i = 0; i < 5; i++) {
            nums[i] = Integer.parseInt(JOptionPane.showInputDialog(null, "Ingresa el numero con el indice " + i));
        }
        System.out.println("=======Array Original=======");
        for (i = 0; i < 5; i++) {
            System.out.println("[" + nums[i] + "]");
        }

        System.out.println("======Array ordenado con el metodo sort=======");

        Arrays.sort(nums);

        for (i = 0; i < 5; i++) {

            System.out.println("[" + nums[i] + "]");
        }
        
        System.out.println("=====Copia de un  array a otro======");
        int nums2[]=new int [5];
        //Copiando de un array a otro
        System.arraycopy(nums, 0, nums2, 0, nums.length);
        
        System.out.println("Hash del nuevo vector:"+nums2);
        
        System.out.println("Elementos del nuevo vector:");
        
       for (i = 0; i < 5; i++) {

            System.out.println("[" + nums2[i] + "]");
        }
    }

}
