
package mypackage.threads;

import java.io.File;
import java.io.FileInputStream;
import javazoom.jl.player.Player;


public class RunnablePlayer implements Runnable{
    
    public static void main(String[] args) throws Exception {
            
         new Player(new FileInputStream(new File("30sec.mp3"))).play();{
             
             
         }
         
    }
    @Override
    public void run() {
        try {
            new Player(new FileInputStream(new File("30sec.mp3"))).play();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
}
}
