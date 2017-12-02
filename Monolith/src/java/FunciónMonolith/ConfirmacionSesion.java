
package FunciónMonolith;

import java.util.ArrayList;

public class ConfirmacionSesion {
    
    public ArrayList<String> CreacionArrays(String valor, String LlaveSesion) {
        HexEstandar hex = new HexEstandar();
        Des des = new Des();
        ArrayList<String> lista = new ArrayList<String>();
        String valorcifrar = valor;
        String ValorRango = "";

        if (valor.length()>8) {
            for (int i = 1; i <= valor.length(); i++) {
                if (i == valor.length() || ValorRango.length() == 7) {
                    ValorRango = ValorRango + valor.charAt(i - 1);
                    String ValorRangoHex = hex.StringToHex(ValorRango);
                    String CifradoSesion = des.Cifrado(ValorRangoHex, LlaveSesion);
                    lista.add(CifradoSesion);
                    ValorRango = "";
                } else {
                    ValorRango = ValorRango + valor.charAt(i - 1);
                }
            }
        } else {
            String ValorRangoHex = hex.StringToHex(valor);
            String CifradoSesion = des.Cifrado(ValorRangoHex, LlaveSesion);
            lista.add(CifradoSesion);
        }

        return lista;

    }
}
