package mypackage.threads;

public class CicloDeVida {

    public static void main(String[] args) {

        GenericThread ThreadOne = new GenericThread("Thread One");
        GenericThread ThreadTwo = new GenericThread("Thread Two");
        GenericThread ThreadThree = new GenericThread("Thread Three");
        GenericThread ThreadFour = new GenericThread("Thread Four");

        ThreadOne.setPriority(Thread.MAX_PRIORITY);
        ThreadTwo.setPriority(Thread.MIN_PRIORITY);

        try {

            ThreadOne.start();
            ThreadTwo.start();
            ThreadThree.start();
            ThreadFour.start();

            ThreadOne.join();
            ThreadTwo.join();
            ThreadThree.join();
            ThreadFour.join();

        } catch (Exception e) {

        }

    }
}
