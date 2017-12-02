/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.util.ArrayList;

public class ClaveHex {
     private String[] listadec={"0","1","2","3",
        "4","5","6","7","8","9","a","b",
         "c","d","e","f"};
    
    
     private String[] listahexa={"0000","0001","0010","0011",
        "0100","0101","0110","0111","1000","1001","1010","1011",
         "1100","1101","1110","1111"};
     private ArrayList<String>clavehexa=new ArrayList<String>();
      public String antesaparacion="";
      
       public ClaveHex(String clave){
         String [] arrayclave=clave.split("");
        for(int i=1;i<=arrayclave.length;i++){
                clavehexa.add(listahexa[BusquedaHexa(arrayclave[i-1])]);
        }

        for(int i=0;i<=clavehexa.size()-1;i++){
            antesaparacion=antesaparacion+clavehexa.get(i);
        }
     }
    
       public ClaveHex(){
           
       }
    
    
    
    private int BusquedaHexa(String busqueda){
        int indice=0;
        for(int i=0;i<=listadec.length-1;i++){
            if(busqueda.equalsIgnoreCase(listadec[i])){
                indice=i;
            }
        }
        return indice;
    }
    
    public String BinDecimal(String [] datobin){
        String datoconv="";
        String datosalida="";
        int contador=0;
        for(int i=0;i<datobin.length;i++){
            if(contador!=3){
                datoconv= datoconv+datobin[i];
                contador++;
            }else{
                datoconv= datoconv+datobin[i];
                contador++;
                for(int k=0;k<listahexa.length;k++){
                    if(datoconv.equalsIgnoreCase(listahexa[k])){
                        datosalida=datosalida + listadec[k];
                    }
                }
                datoconv="";
                contador=0;
            }
        }
        return datosalida;
    }
    
    public String retorno(){
        return antesaparacion;
    }
     
}
