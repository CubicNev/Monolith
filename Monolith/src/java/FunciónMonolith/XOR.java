/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.util.ArrayList;

public class XOR {
    
    public String ESXOR(String dato1,String dato2){
        String resultado;
        if((dato1.equalsIgnoreCase(dato2))|| dato2.equalsIgnoreCase(dato1)){
            resultado="0";
        }else {
           resultado="1"; 
        }
        return resultado;
    }
    
}
