package mypackage.threads;

public class TestThreads {

    public static void main(String[] args) {

        //Hardware Query
        System.out.println("Java Version: " + System.getProperty("java.version"));
        System.out.println("Logic Processor: " + Runtime.getRuntime().availableProcessors());

        /*
        
        //=================USE CLASS GenericThread==================
        //Threads
        GenericThread threadOne=new GenericThread("Thread One");
        GenericThread threadTwo=new GenericThread("Thread Two");
        GenericThread threadThree=new GenericThread("Thread Three");
        GenericThread threadFour=new GenericThread("Thread Four");
        
        //Run() Method
        threadOne.run();
        
        threadTwo.run();
        
        threadThree.run();
        
        threadFour.run(); 
        
        //Start() Method->Execute the run methods in a new thread
        threadOne.start();
        
        threadTwo.start();
        
        threadThree.start();
        
        threadFour.start();
        
        //Execute another thread as an anonymous variable 
        new GenericThread("Thread Five").start();
        
        /=================END USE CLASS GenericThread==================
        */
        
        //=================USE CLASS RunnableThread==================
        //For use the method start() , in the Runnable  Interface, you be create an object instance 
        //of the Thread class, next you be put inside the Thread construct an object of the class what implement the runnable interface
        
        RunnableThread runnableThreadOne = new RunnableThread("Thread One");
        RunnableThread runnableThreadTwo = new RunnableThread("Thread Two");
        RunnableThread runnableThreadThree = new RunnableThread("Thread Three");
        RunnableThread runnableThreadFour = new RunnableThread("Thread Four");
        
        Thread threadOne=new Thread(runnableThreadOne);
        Thread threadTwo=new Thread(runnableThreadTwo);
        Thread threadThree=new Thread(runnableThreadThree);
        Thread threadFour=new Thread(runnableThreadFour);
        
        //Run() Method
        threadOne.run();
        
        threadTwo.run();
        
        threadThree.run();
        
        threadFour.run(); 
        
        //Start() Method->Execute the run methods in a new thread
        threadOne.start();
        
        threadTwo.start();
        
        threadThree.start();
        
        threadFour.start();
        
        //Execute another thread as an anonymous variable 
        new Thread(new RunnableThread("Thread Five")).start();
        
         //=================END USE CLASS RunnableThread==================

    }
}
