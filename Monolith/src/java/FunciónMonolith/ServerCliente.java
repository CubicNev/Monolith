/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.PrintWriter;
import java.net.Socket;


public class ServerCliente {
     static final String HOST="192.168.21.13";
     static final int PUERTO=5000;
     PrintWriter alServidor;
     BufferedReader delTeclado;
     DataInputStream delServidor;
     
    
    public void EnviarServidor(String NombreUsuario,String NombreCifrado ){
        try{
        Socket skCliente=new Socket(HOST,PUERTO);
        alServidor=new PrintWriter(skCliente.getOutputStream(),true);
        delServidor=new DataInputStream(skCliente.getInputStream());
        alServidor.println(2);
        alServidor.println(NombreUsuario);
        alServidor.println(NombreCifrado);
        
        }catch(Exception ex){
            
        }
    }
    
    public void EnviarPeticion(String NombreUsuario,String Password ){
        try{
        Socket skCliente=new Socket(HOST,PUERTO);
        alServidor=new PrintWriter(skCliente.getOutputStream(),true);
        delServidor=new DataInputStream(skCliente.getInputStream());
        alServidor.println(1);
        alServidor.println(NombreUsuario);
        alServidor.println(Password);
        
        }catch(Exception ex){
            
        }
    }
}