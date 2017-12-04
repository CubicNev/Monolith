package cifi;

import java.util.ArrayList;

/**
 *
 * @author memo0
 */
public class cifrado {
    String cadena="";
    public String hola(String holi){
        //String cadena="Hola Guillermo Ramirez Olvera este correo es autentico enviado por monolite para recuperar la contrasena de la cuenta memo gracias por confiar en nosotros tu contrasena es que pedo";
        this.cadena=holi;
        int contador=0;
        ArrayList<String> hola= new ArrayList<>();
        String haber="";
        int bandera=0;
        //divide la caneda en partes para que cada parte tenga 8 chars
        while(cadena.length()%8!=0){
            cadena=cadena+" ";
        }
        for(int x=0;x<cadena.length();++x){
            contador++;
            bandera++;
            if(contador==8){
                haber=cadena.substring(bandera-8, bandera);
                hola.add(haber);
                contador=0;
            }
        }
        String binario="";
        ArrayList<String> bloques= new ArrayList<>();
        String aux="0000000";
        int cuantos=hola.size();
        int bandera1=0;
        //Hace el proceso para hacer el exor con lo 8 bits y almacena el resultado en un arraylist
        for(int x=0;x<cuantos;++x){
            for(int y=0;y<hola.get(x).length();++y){ 
                binario=Pdecimal(hola.get(x).codePointAt(y));
                aux=exor1(aux, binario); 
            }
            bloques.add(aux);
            
            
        }
        //Con el resultado anterior lo transforma a decimal y luego busca ese valor en codigo ascci
        //Si el caracter del codigo ascii es menor que 33 o es 127 o es un numero no lo busca y mete su numero corespondiente en ascii
        ArrayList<Integer> bloquesint= new ArrayList<>();
        ArrayList<String> chares= new ArrayList<>();
        for(int x=0; x<bloques.size();++x){
            int num=0;
            char hola11;
            num=convera(Integer.parseInt(bloques.get(x)));
            bloquesint.add(num);
            if(num<33||num==127||(num >= 48 && num <= 57)){
                chares.add(num+"");
            }else{
                hola11=(char)num;
                chares.add(hola11+"");
                
            }   
        }
        System.out.println(hola);
        System.out.println(bloques);
        System.out.println(bloquesint);
        System.out.println(chares);
        System.out.println(hola.size());
        System.out.println(bloques.size());
        System.out.println(bloquesint.size());
        String mensaje="";
        for(int x=0;x<chares.size();++x){
            mensaje=mensaje+chares.get(x);
        }
        //cifichido memo12 = new cifichido(mensaje);
        //System.out.println(mensaje);
        return mensaje;
    }
    //conversion de binario a decimal
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
