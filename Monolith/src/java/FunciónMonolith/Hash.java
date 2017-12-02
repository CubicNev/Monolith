/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.util.ArrayList;


public class Hash {
    
   
     public String CifradoUsuario(String NombreUsuario,String Password){
       ArrayList<String> listahash= new ArrayList<String>();
       String Cifrado="";
       XORHash xor=new XORHash();
       Binario bin=new Binario();
       for (int x=0;x<=NombreUsuario.length()-1;x++){
           listahash.add(bin.BinDecimal(NombreUsuario.codePointAt(x)));
       }
       for (int x=0;x<=Password.length()-1;x++){

           listahash.add(bin.BinDecimal(Password.codePointAt(x)));
       }
       
       for(int j=0;j<=listahash.size()-1;j++){

           if(j==0||j==1){
               Cifrado=xor.operacionXOR(listahash.get(0),listahash.get(1));
           }else{
               Cifrado=xor.operacionXOR(Cifrado,listahash.get(j));
           }
       }
       return Cifrado;
    } 
    
    
}
