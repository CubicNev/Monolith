/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cifi;

import java.util.ArrayList;

/**
 *
 * @author memo0
 */
public class cifichido {

    private String mensaje = "";
    public String clave = "";
    public String usuario = "";
    public ArrayList<String> bloques = new ArrayList<>();
    public ArrayList<String> bloquesCifi = new ArrayList<>();

    public String memito(String envio, String usu) {
        this.usuario = usu;
        String bina = "";
        String deci = "";
        ArrayList<String> bloqdeci = new ArrayList<>();
        int aux = 0;
        this.mensaje = envio;
        for (int x = 0; x < mensaje.length(); ++x) {
            aux = mensaje.codePointAt(x);
            bina = Pdecimal(aux);
            bloques.add(bina);
        }
        System.out.println(bloques);
        String aux1 = "0000000";
        String bin = "";
        for (int x = 0; x < usuario.length(); ++x) {
            bin = Pdecimal(usuario.codePointAt(x));
            aux1 = exor1(aux1, bin);
            
        }
        clave=aux1;
        for (int x = 0; x < bloques.size(); ++x) {
            deci = cifra(bloques.get(x));
            bloqdeci.add(deci);
        }
        System.out.println(bloqdeci);
        int num=0;
        ArrayList<String> decibloq = new ArrayList<>();
        ArrayList<Integer> kpedo = new ArrayList<>();
        for(int x=0;x<bloqdeci.size();++x){
            char holi;
            num=convera(Integer.parseInt(bloqdeci.get(x)));
            kpedo.add(num);
            holi=(char)num;
            decibloq.add(holi+"");
        }
        //System.out.println(kpedo);
        System.out.println(decibloq);
        String adendum="";
        for(int x=0;x<decibloq.size();++x){
            adendum=adendum+decibloq.get(x);
        }
        System.out.println(adendum);
        return adendum;
    }

    public String cifra(String holi) {
        String memito=holi;
        ArrayList<String> prueba = new ArrayList<>();
        prueba.add(Pdecimal(85));
        prueba.add(Pdecimal(105));
        prueba.add(Pdecimal(89));
        prueba.add(Pdecimal(91));
        prueba.add(Pdecimal(127));
        prueba.add(clave);
        for(int x=0;x<prueba.size();++x){
            memito=exor1(memito, prueba.get(x));
        }
        return memito;
    }

    public int convera(int edmu) {
        int binario = edmu;
        int resultado1 = 0;
        int potencia = 0;
        while (binario != 0) {
            int ultimo = binario % 10;
            resultado1 += ultimo * Math.pow(2, potencia);
            potencia++;
            binario = binario / 10;
        }
        return resultado1;
    }

    //conversion de decimal a binario
    public String Pdecimal(int dato2) {
        int decimal = dato2;
        String resultado2 = "";
        while (decimal != 0) {
            if (decimal % 2 == 0) {
                resultado2 = "0" + resultado2;
            } else {
                resultado2 = "1" + resultado2;
            }
            decimal = decimal / 2;
        }
        while (resultado2.length() < 7) {
            resultado2 = "0" + resultado2;
        }
        return resultado2;
    }

    // es un exor
    public String exor1(String palabra1, String palabra2) {
        String hola1 = "";
        char[] one = palabra1.toCharArray();
        char[] two = palabra2.toCharArray();

        for (int i = 0; i < one.length; i++) {
            if (one[i] == two[i]) {
                hola1 = hola1 + "0";
            } else {
                hola1 = hola1 + "1";
            }

        }
        return hola1;

    }
}
