package mypackage.threads;

import java.text.DecimalFormat;
import javax.swing.JTextField;

public class RunnableChronometer implements Runnable {

    private JTextField jTextField;
    private int accountant = 0;
    private boolean chronometerRunning = false;
    private DecimalFormat decimalFormat = new DecimalFormat("000000");

    public RunnableChronometer(JTextField jTextField) {
        this.jTextField = jTextField;
    }

    @Override
    public void run() {

        while (true) {
            if (chronometerRunning) {
                accountant++;
                jTextField.setText(decimalFormat.format(accountant));
            }
            try {
                Thread.sleep(1000);

            } catch (Exception exc) {

            }
        }
    }

    public void start() {
        chronometerRunning = true;
    }

    public void pause() {
        chronometerRunning = false;
    }
    
    public void stop() {
        chronometerRunning = false;
        accountant=0;
        jTextField.setText(decimalFormat.format(accountant));
    }

}
