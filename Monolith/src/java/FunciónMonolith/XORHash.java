/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.util.ArrayList;

public class XORHash {
    
    public String operacionXOR(String uno,String dos){
        String xorfinal="";
        for(int i=0;i<=uno.length()-1;i++){
            if(uno.charAt(i)==dos.charAt(i)){
                xorfinal+="0";
            }else{
                xorfinal+="1";
            }
        }
        return xorfinal;
    }
    
}
