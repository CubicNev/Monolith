
package FunciónMonolith;

import java.util.*;

public class BoletoSesion {
    
    private ArrayList<String> NombreUser;
    private ArrayList<String> KDCName;
    private ArrayList<String> IPClient;
    private String LlaveSesion;

    public String getLlaveSesion() {
        return LlaveSesion;
    }

    public void setLlaveSesion(String LlaveSesion) {
        this.LlaveSesion = LlaveSesion;
    }

    public ArrayList<String> getNombreUser() {
        return NombreUser;
    }

    public void setNombreUser(ArrayList<String> NombreUser) {
        this.NombreUser = NombreUser;
    }

    public ArrayList<String> getKDCName() {
        return KDCName;
    }

    public void setKDCName(ArrayList<String> KDCName) {
        this.KDCName = KDCName;
    }

    public ArrayList<String> getIPClient() {
        return IPClient;
    }

    public void setIPClient(ArrayList<String> IPClient) {
        this.IPClient = IPClient;
    }

    
    
   public ArrayList<String> CreacionArrays(String valor, String LlaveUser, String KDCLlave) {
        HexEstandar hex = new HexEstandar();
        Des des = new Des();
        ArrayList<String> lista = new ArrayList<String>();
        String llaveUserHex = hex.StringToHex(LlaveUser);
        String llaveKDCHex = hex.StringToHex(KDCLlave);
        String valorcifrar = valor;
        String ValorRango = "";

        if (valor.length()>8) {
            for (int i = 1; i <= valor.length(); i++) {
                if (i == valor.length() || ValorRango.length() == 7) {
                    ValorRango = ValorRango + valor.charAt(i - 1);
                    String ValorRangoHex = hex.StringToHex(ValorRango);
                    String CifradoKDC = des.Cifrado(ValorRangoHex, llaveKDCHex);
                    String CifradoUser = des.Cifrado(CifradoKDC, llaveUserHex);
                    lista.add(CifradoUser);
                    ValorRango = "";
                } else {
                    ValorRango = ValorRango + valor.charAt(i - 1);
                }
            }
        } else {
            String ValorRangoHex = hex.StringToHex(valor);
            String CifradoKDC = des.Cifrado(ValorRangoHex, llaveKDCHex);
            String CifradoUser = des.Cifrado(CifradoKDC, llaveUserHex);
            lista.add(CifradoUser);
        }

        return lista;

    }
    
    
}
