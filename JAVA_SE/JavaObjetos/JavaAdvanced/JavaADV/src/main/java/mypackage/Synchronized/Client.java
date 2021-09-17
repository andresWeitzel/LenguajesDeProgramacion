
package mypackage.Synchronized;


public class Client extends Thread{
    
    private Account account;
    
    public Client(Account account) {
        this.account = account; 
    }
    @Override
    public void run() {
        
        account.debit(2000);
        
        System.out.println("Balance:"+account.getBalance());
        
    }
    
    
    
    

}
