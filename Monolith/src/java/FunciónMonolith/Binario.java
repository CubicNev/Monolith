/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;
 import java.util.ArrayList;


public class Binario {
    
       
    public String BinDecimal(int numero){
       ArrayList<String> listbin= new ArrayList<String>();
        int contador;
        String numfinal="";
        if(numero!=0){
            while(numero>1){
            if(numero%2==0){
                numero=numero/2;
                listbin.add("0");
            }else{
                if(numero%2>0){
                    numero=numero-1;
                    numero=numero/2;
                    listbin.add("1");
                }
            }
        }
         listbin.add("1");
         for( contador=listbin.size()-1;contador>=0;contador--){
             numfinal+=(listbin.get(contador));
         }
       }else{
            numfinal="0";
        }
        
        if(numfinal.length()<8){
            int diferencia=8-numfinal.length();
            String adicional="";
            for(int j=1;j<=diferencia;j++){
              adicional+="0";
            }  
            numfinal=adicional+numfinal;
        }
        return numfinal;
    }
    
    public int DecimBin(String bin){
        ArrayList<Integer> list= new ArrayList<Integer>();
        ArrayList<Integer> listfin= new ArrayList<Integer>();
        int numero=0;
        String [] s=new String[bin.length()];
        for(int i=0;i<=s.length-1;i++){
               s[i]=String.valueOf(bin.charAt(i));
               list.add(Integer.parseInt(s[i].toString()));
        }
         for(int i=list.size()-1;i>=0;i--){
             listfin.add(list.get(i));
         }
        for(int i=listfin.size()-1;i>=0;i--){
            if(listfin.get(i)==1){
                numero=numero+(int)Math.pow(2, i);
            }
        }
      return numero;
    }
    
}
