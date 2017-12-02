/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.io.*;
import java.math.*;
import java.net.*;
import java.util.*;
import javax.xml.bind.DatatypeConverter;


public class ServerCliente {
     static final String HOST="192.168.0.3";
     static final int PUERTO=5000;
     ObjectOutputStream alServidor;
     ObjectInputStream delServidor;
     
    
    public void EnviarRegistroUsuario(String NombreUsuario,String Password,String IDMaquinaCliente ){
        try{
        Socket skCliente=new Socket(HOST,PUERTO);
        alServidor=new ObjectOutputStream(skCliente.getOutputStream());
        delServidor=new ObjectInputStream(skCliente.getInputStream());
        alServidor.writeUTF("1");
        alServidor.flush();
        alServidor.writeUTF(NombreUsuario);
        alServidor.flush();
        alServidor.writeUTF(Password);
        alServidor.flush();
        alServidor.writeUTF(IDMaquinaCliente);
        alServidor.flush();
        
        }catch(Exception ex){
            
        }
    }
    
    public void EnviarPeticionUsuario(String NombreUsuario,String Nombrecifrado,String IDMaquinaUsuario,String ContraUsuario ){
        try{
        Socket skCliente=new Socket(HOST,PUERTO);
        alServidor= new ObjectOutputStream(skCliente.getOutputStream());
        delServidor=new ObjectInputStream(skCliente.getInputStream());
        alServidor.writeUTF("2");
        alServidor.flush();
        alServidor.writeUTF(NombreUsuario);
         alServidor.flush();
        alServidor.writeUTF(Nombrecifrado);
         alServidor.flush();
      alServidor.writeUTF(IDMaquinaUsuario);
       alServidor.flush();
       boolean confirmacion1=delServidor.readBoolean();
       boolean confirmacion2=delServidor.readBoolean();
       if(confirmacion1 && confirmacion2){
            Des des=new Des();
            HexEstandar hex=new HexEstandar();
            String userCipher=hex.StringToHex(ContraUsuario);
            ArrayList<String> NombreusaurioArray=(ArrayList<String>) delServidor.readObject();
            ArrayList<String> NombreKDCArray=(ArrayList<String>)delServidor.readObject();
            ArrayList<String> IPUserArray=(ArrayList<String>)delServidor.readObject();
            for(int i=0;i<NombreusaurioArray.size();i++){
                String DatoADescifrar=NombreusaurioArray.get(i);
                String DatoDescifrado=des.DesCifrado(DatoADescifrar,userCipher);
                NombreusaurioArray.set(i,DatoDescifrado);
            }
            for(int i=0;i<NombreKDCArray.size();i++){
                String DatoADescifrar=NombreKDCArray.get(i);
                String DatoDescifrado=des.DesCifrado(DatoADescifrar,userCipher);
                NombreKDCArray.set(i,DatoDescifrado);
            }
            for(int i=0;i<IPUserArray.size();i++){
                String DatoADescifrar=IPUserArray.get(i);
                String DatoDescifrado=des.DesCifrado(DatoADescifrar,userCipher);
                IPUserArray.set(i,DatoDescifrado);
            }
           
            String llaveSesion=delServidor.readUTF();
            String LlaveSesionDescifrada=des.DesCifrado(llaveSesion,userCipher);
            
             InetAddress address = InetAddress.getLocalHost();
             Date fecha=new Date();
            
            ConfirmacionSesion confirsecion=new ConfirmacionSesion();
            
            ArrayList<String> UsuarioSecionArray=confirsecion.CreacionArrays(NombreUsuario, llaveSesion);
            ArrayList<String> IPUsuarioSecionArray=confirsecion.CreacionArrays(address.getHostAddress(), llaveSesion);
            ArrayList<Date> FechaSecion=new ArrayList<Date>();
            FechaSecion.add(fecha);
            
            alServidor.writeObject(NombreusaurioArray);
            alServidor.writeObject(NombreKDCArray);
            alServidor.writeObject(IPUserArray);
            alServidor.writeObject(UsuarioSecionArray);
            alServidor.writeObject(IPUsuarioSecionArray);
            alServidor.writeObject(FechaSecion);
            
       }else{
           
       }
        }catch(Exception ex){
            
        }
    }
}