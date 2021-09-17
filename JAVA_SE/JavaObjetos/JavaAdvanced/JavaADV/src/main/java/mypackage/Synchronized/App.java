
package mypackage.Synchronized;


public class App {
    public static void main(String[] args) {
        
        Account account1=new Account();
        
        Client client1=new Client(account1);
        
        Client client2=new Client(account1 );
            
        
        client1.start();
        client2.start();    
    
    }

}
