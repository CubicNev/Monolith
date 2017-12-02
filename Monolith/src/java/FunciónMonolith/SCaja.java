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
public class SCaja {
     ArrayList<String> caja1=new ArrayList<String>();
      ArrayList<String> caja2=new ArrayList<String>();
      ArrayList<String> caja3=new ArrayList<String>();
      ArrayList<String> caja4=new ArrayList<String>();
      ArrayList<String> caja5=new ArrayList<String>();
      ArrayList<String> caja6=new ArrayList<String>();
      ArrayList<String> caja7=new ArrayList<String>();
      ArrayList<String> caja8=new ArrayList<String>();
    
    private String[] listabinM={"0000","0001","0010","0011",
        "0100","0101","0110","0111","1000","1001","1010","1011",
         "1100","1101","1110","1111"};
    
    private String[] listabinN={"00","01","10","11"};
    
    private int s1[][]={{14,4,13,1,2,15,11,8,3,10,6,12,5,9,0,7},
                        {0,15,7,4,14,2,13,1,10,6,12,11,9,5,3,8},
                        {4,1,14,8,13,6,2,11,15,12,9,7,3,10,5,0},
                        {15,12,8,2,4,9,1,7,5,11,3,14,10,0,6,13}
    };
    
    private int s2[][]={{15,1,8,14,6,11,3,4,9,7,2,13,12,0,5,10},
                        {3,13,4,7,15,2,8,14,12,0,1,10,6,9,11,5},
                        {0,14,7,11,10,4,13,1,5,8,12,6,9,3,2,15},
                        {13,8,10,1,3,15,4,2,11,6,7,12,0,5,14,9}};
    
    private int s3[][]={{10,0,9,14,6,3,15,5,1,13,12,7,11,4,2,8},
                        {13,7,0,9,3,4,6,10,2,8,5,14,12,11,15,1},
                        {13,6,4,9,8,15,3,0,11,1,2,12,5,10,14,7},
                        {1,10,13,0,6,9,8,7,4,15,14,3,11,5,2,12}};
    
    private int s4[][]={{7,13,14,3,0,6,9,10,1,2,8,5,11,12,4,15},
                        {13,8,11,5,6,15,0,3,4,7,2,12,1,10,14,9},
                        {10,6,9,0,12,11,7,13,15,1,3,14,5,2,8,4},
                        {3,15,0,6,10,1,13,8,9,4,5,11,12,7,2,14}};
    
    private int s5[][]={{2,12,4,1,7,10,11,6,8,5,3,15,13,0,14,9},
                        {14,11,2,12,4,7,13,1,5,0,15,10,3,9,8,6},
                        {4,2,1,11,10,13,7,8,15,9,12,5,6,3,0,14},
                        {11,8,12,7,1,14,2,13,6,15,0,9,10,4,5,3}};
    
    private int s6[][]={{12,1,10,15,9,2,6,8,0,13,3,4,14,7,5,11},
                        {10,15,4,2,7,12,9,5,6,1,13,14,0,11,3,8},
                        {9,14,15,5,2,8,12,3,7,0,4,10,1,13,11,6},
                        {4,3,2,12,9,5,15,10,11,14,1,7,6,0,8,13}};
    
   private int s7[][]={{4,11,2,14,15,0,8,13,3,12,9,7,5,10,6,1},
                       {13,0,11,7,4,9,1,10,14,3,5,12,2,15,8,6},
                       {1,4,11,13,12,3,7,14,10,15,6,8,0,5,9,2},
                       {6,11,13,8,1,4,10,7,9,5,0,15,14,2,3,12}};
   
   private int s8[][]={{13,2,8,4,6,15,11,1,10,9,3,14,5,0,12,7},
                       {1,15,13,8,10,3,7,4,12,5,6,11,0,14,9,2},
                       {7,11,4,1,9,12,14,2,0,6,10,13,15,3,5,8},
                       {2,1,14,7,4,10,8,13,15,12,9,0,3,5,6,11}}; 
   
   public String salida="";

   
   public SCaja(String mensaje){
        String[] division=mensaje.split("");
        for(int i=0;i<division.length;i++){
            if(i>=0 && i<6){
               caja1.add(division[i]);
            }else if(i>=6 && i<12){
               caja2.add(division[i]);
            }else if(i>=12 && i<18){
               caja3.add(division[i]);
            }else if(i>=18 && i<24){
               caja4.add(division[i]);
            }else if(i>=24 && i<30){
               caja5.add(division[i]); 
            }else if(i>=30 && i<36){
               caja6.add(division[i]);
            }else if(i>=36 && i<42){
               caja7.add(division[i]); 
            }else if(i>=42 && i<48){
               caja8.add(division[i]);  
            }
        }
        /*Caja 1 n*/
        String n="";
        String m="";
        n= n+ caja1.get(0)+ caja1.get(5);
        m=m +caja1.get(1)+ caja1.get(2)+ caja1.get(3)+ caja1.get(4);
        salida=salida+ listabinM[s1[Busquedan(n)][Busquedam(m)]];
        n="";
        m="";
        n= n+ caja2.get(0)+ caja2.get(5);
        m=m +caja2.get(1)+ caja2.get(2)+ caja2.get(3)+ caja2.get(4);
        salida=salida+ listabinM[s2[Busquedan(n)][Busquedam(m)]];
        n="";
        m="";
        n= n+ caja3.get(0)+ caja3.get(5);
        m=m +caja3.get(1)+ caja3.get(2)+ caja3.get(3)+ caja3.get(4);
        salida=salida+ listabinM[s3[Busquedan(n)][Busquedam(m)]];
        n="";
        m="";
        n= n+ caja4.get(0)+ caja4.get(5);
        m=m +caja4.get(1)+ caja4.get(2)+ caja4.get(3)+ caja4.get(4);
        salida=salida+ listabinM[s4[Busquedan(n)][Busquedam(m)]];
        n="";
        m="";
        n= n+ caja5.get(0)+ caja5.get(5);
        m=m +caja5.get(1)+ caja5.get(2)+ caja5.get(3)+ caja5.get(4);
        salida=salida+ listabinM[s5[Busquedan(n)][Busquedam(m)]];
        n="";
        m="";
        n= n+ caja6.get(0)+ caja6.get(5);
        m=m +caja6.get(1)+ caja6.get(2)+ caja6.get(3)+ caja6.get(4);
        salida=salida+ listabinM[s6[Busquedan(n)][Busquedam(m)]];
        n="";
        m="";
        n= n+ caja7.get(0)+ caja7.get(5);
        m=m +caja7.get(1)+ caja7.get(2)+ caja7.get(3)+ caja7.get(4);
        salida=salida+ listabinM[s7[Busquedan(n)][Busquedam(m)]];
        n="";
        m="";
        n= n+ caja8.get(0)+ caja8.get(5);
        m=m +caja8.get(1)+ caja8.get(2)+ caja8.get(3)+ caja8.get(4);
        salida=salida+ listabinM[s8[Busquedan(n)][Busquedam(m)]];
       
   }
   
   private int Busquedan(String n){
       int ns=0;
       for(int i=0;i<listabinN.length;i++){
          if(n.equalsIgnoreCase(listabinN[i])){
             ns=i;
          }
       }
      return ns;
   }
   
   private int Busquedam(String m){
       int ms=0;
       for(int i=0;i<listabinM.length;i++){
          if(m.equalsIgnoreCase(listabinM[i])){
             ms=i;
          }
       }
     return ms;
   }
   
   public String mensajeS(){
       return salida;
   }
}
