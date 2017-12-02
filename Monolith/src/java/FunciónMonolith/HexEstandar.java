/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.math.BigInteger;


public class HexEstandar {
    
    public String StringToHex(String datoString ){
        String HEX;
        HEX=String.format("%016x", new BigInteger(1,datoString.getBytes()));
        return HEX;
    }
    
     public String HexToString(String datoHex ){
        String Resultado;
        Resultado=new String(new BigInteger(datoHex, 16).toByteArray());
        return Resultado;
    }
    
}
