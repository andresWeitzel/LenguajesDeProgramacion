package mypackage.sockets;

import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class TestServerSocket {

    public static void main(String[] args) {

        String msj = System.getProperties() + "\n" + System.getenv();
        
         msj="HTTP/1.1 200 OK\n"+
                "Content-Length:  " + msj.length() + "\n\n"+msj;

        try ( ServerSocket serverOne = new ServerSocket(3200)) {

            while (true) {
                System.out.println("==Waiting for a connection==");
                System.out.println("..........................");

                //Waiting for a connection, the thread is waiting to
                try ( 
                        Socket socket1 = serverOne.accept();
                        
                        OutputStream dataOutput=socket1.getOutputStream();
                        ) {
                    
                    System.out.println("Conexion establecido por : "+ socket1.getInetAddress());
                    
                    dataOutput.write(msj.getBytes());
                    
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e) { 
                    e.printStackTrace();
        }

    }
}
