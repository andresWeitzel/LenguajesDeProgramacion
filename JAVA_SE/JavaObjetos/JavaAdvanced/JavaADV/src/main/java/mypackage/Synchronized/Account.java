package mypackage.Synchronized;

public class Account {

    private float balance = 2000;

    public synchronized void deposit(float amount) {
        balance += amount;
    }

    public void debit(float amount) {

        System.out.println("==Debit Operation==");

        synchronized (this) {

            if (balance >= amount) {

                try {
                    Thread.sleep(2000);

                } catch (Exception e) {

                }
                balance -= amount;
            } else {
                System.out.println("==Does not have sufficient funds==");
            }
        }
        System.out.println("==Finish Operation==");

    }

    public synchronized float getBalance() {
        return balance;
    }

}
