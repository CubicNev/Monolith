/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.util.ArrayList;

/* 
@author:Ricardo alberto Machorro Vences 5IM6

*/
public class LLaves {
    Permutacion per=new Permutacion();
    private String C[]=new String[28];
    private String D[]=new String[28];
    private ArrayList<String>llaves=new ArrayList<String>();
    private int rondas[]={1,1,2,2,2,2,2,2,1,2,2,2,2,2,2,1};
    
    
    /*0,1,1,2,2,2,2,2,2,1,2,2,2,2,2,2,2*/
    
    public LLaves(String clave){
        String separacion[]=clave.split("");
         String separacionreal[]=new String[56];
         int [] pc1=per.regresaPC1();
         int [] pc2=per.regresaPC2();
        for(int i=0;i<=pc1.length-1;i++){
            separacionreal[i]=separacion[pc1[i]-1];
        }
        
        int contador=0;
      for(int i=0;i<=55;i++){
          if(i<=27){
              C[i]=separacionreal[i];
          }else if(i>27 && i<=55){
              D[contador]=separacionreal[i];
              contador++;
          }
      }
      
      for(int i=0;i<=15;i++){
          if(String.valueOf(rondas[i]).equalsIgnoreCase("1")){
             MoverUno();
          }else if(String.valueOf(rondas[i]).equalsIgnoreCase("2")){
             MoverDos();
          }
          String prellave="";
          for(int f=0;f<=C.length-1;f++){
              prellave=prellave+C[f];
          }
          for(int f=0;f<=D.length-1;f++){
              prellave=prellave+D[f];
          }
          String perm[]=prellave.split("");
          String llave="";
          for(int l=0;l<pc2.length;l++){
              int n=pc2[l];
             llave=llave+perm[n-1];
          }
          llaves.add(llave);
      }  
    }
    
    private void MoverUno(){
        String especial1=D[0];
        String especial2=C[0];
        for(int i=1;i<D.length;i++){
            D[i-1]=D[i];
        }
        D[27]=especial1;

        for(int i=1;i<C.length;i++){
            C[i-1]=C[i];
        }
        C[27]=especial2;
    }
     private void MoverDos(){
        String especial1=D[0];
        String especial2=D[1];
         String especial3=C[0];
        String especial4=C[1];
        for(int i=2;i<C.length;i++){
            C[i-2]=C[i];
        }
        C[26]=especial3;
        C[27]=especial4;
        for(int i=2;i<D.length;i++){
            D[i-2]=D[i];
        }
        D[26]=especial1;
        D[27]=especial2;
    }
     
     public ArrayList<String> keys(){
         
         ArrayList<String>keys=llaves;
         return keys;
     }
}
