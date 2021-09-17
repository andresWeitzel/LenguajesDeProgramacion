
package mypackage.threads;




import java.text.DecimalFormat;
import java.time.LocalTime;
import javax.swing.JTextField;


public class RunnableClock  implements Runnable{
    
    private JTextField  jTextFieldTime;

    public RunnableClock(JTextField  jTextFieldTime) {
        this.jTextFieldTime = jTextFieldTime;
    }
    
    @Override
    public void run() {
        
        DecimalFormat decimalFormat=new DecimalFormat("00");
        
        while(true){
            
            LocalTime localTime=LocalTime.now();
            
            String time=
                    decimalFormat.format(localTime.getHour()) 
                    + ":"  
                    + decimalFormat.format(localTime.getMinute())
                    + ":"  
                    + decimalFormat.format(localTime.getSecond ());
            
            jTextFieldTime.setText(time);
            
            
            try {
                Thread.sleep(1000);
                
            } catch (Exception exc) {
                
                System.out.println(exc);
            }
            
        }
        
    }

}
