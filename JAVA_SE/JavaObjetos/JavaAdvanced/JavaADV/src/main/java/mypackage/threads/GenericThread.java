
package mypackage.threads;


public class GenericThread extends Thread{
    
    private String name;

    public GenericThread(String name) {
        this.name = name;
    }

    @Override
    public void run() {
        
        for(int a=1; a <= 10; a++){
            
            System.out.println(name + " " + a);
            try {
                Thread.sleep(1000);
                
            }catch(Exception exc){
                
            }
        }
    
    }
    
    
}
