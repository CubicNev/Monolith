
package FunciónMonolith;

import java.util.ArrayList;

public class Des {
   
    ClaveHex convertidor1;
    ClaveHex convertidor2;
    ClaveHex convertidor3;
    private LLaves keys;
    private ArrayList<String>keysDescifrado;
    Permutacion per=new Permutacion();
    private String L[]=new String[32];
    private String R[]=new String[32];
    private XOR xor=new XOR();
    private SCaja smen;
    public String mensajeOUT;
    
    /*public void Menu(){
        System.out.println("Dato normal en Hexadecimal");
        String n1=lector.scan();
        System.out.println("Clave en Hexadecimal");
        String n2=lector.scan();
        if(n1.matches("[a-f A-f_0-9]*") && n2.matches("[a-f A-f_0-9]*")){
            if(n1.length()==16 && n2.length()==16){
                System.out.println("Cifrado");
                Cifrado(n1,n2);
                System.out.println("Descifrado");
                DesCifrado();
            }else{
                 System.out.println("Esciba una clave y/o  valor a cifrar de 16 caracteres ");
            }
        }else{
            System.out.println("Esciba todos los valores en haxadecimales");
       }
    }*/
    
    public String Cifrado(String dato,String clave){
        convertidor1=new ClaveHex(dato);
        convertidor2=new ClaveHex(clave);
        String mensajebin=convertidor1.retorno();
        String [] clear=mensajebin.split(""); 
        String [] clearmes=new String [clear.length];
        
        String clavebin=convertidor2.retorno();
        keys=new LLaves(clavebin);
        
        int [] ip=per.regresarIP();
        
        for(int i=0;i<ip.length;i++){
            clearmes[i]=clear[ip[i]-1];
        }
        ArrayList<String>llaves=keys.keys();
        for(int i=0;i<32;i++){
            L[i]=clearmes[i];
        }
        int contador=0;
        for(int i=32;i<clearmes.length;i++){
            R[contador]=clearmes[i];
            contador++;
        }
        
       
        for(int i=0;i<16;i++){
            int exp[]=per.regresarE();
            String [] mensajexpandido=new String[48];
            String mensajellaves="";
            String [] llaveturno=llaves.get(i).split("");
            for(int l=0;l<exp.length;l++){
              mensajexpandido[l]=R[exp[l]-1];
           }
            for(int k=0;k<mensajexpandido.length;k++){ 
                mensajellaves=mensajellaves+xor.ESXOR(mensajexpandido[k],llaveturno[k]);
            }
            smen=new SCaja(mensajellaves);
            String [] mensajesS=smen.mensajeS().split("");
            int P[]=per.regresarP();
            String [] mensajeP=new String[32];
            for(int l=0;l<P.length;l++){
              mensajeP[l]=mensajesS[P[l]-1];
           }
            String RFinal="";
           for(int k=0;k<mensajeP.length;k++){
                RFinal=RFinal+xor.ESXOR(L[k],mensajeP[k]);
            }
            L=R;
            R=RFinal.split("");
        }
        String mensajeFinal="";
        for(int i=0;i<R.length;i++){
            mensajeFinal=mensajeFinal +R[i];
        }
        for(int i=0;i<L.length;i++){
            mensajeFinal=mensajeFinal +L[i];
        }
        String[] PermutacionFinal=mensajeFinal.split("");
        int [] IP1=per.regresarIP1();
        String[] mensajeSalida=new String[64];
        for(int i=0;i<IP1.length;i++){
            mensajeSalida[i]=PermutacionFinal[IP1[i]-1];
        }
         ClaveHex convertidor=new ClaveHex();
            String mensajeCifrado=convertidor.BinDecimal(mensajeSalida);
         
       return mensajeCifrado;
    }
    
    public String DesCifrado(String dato,String clave){
        convertidor3=new ClaveHex(dato);
        
        convertidor2=new ClaveHex(clave);
        String clavebin=convertidor2.retorno();
        keys=new LLaves(clavebin);
        
        
        String mensajebin=convertidor3.retorno();
        String [] clear=mensajebin.split(""); 
        String [] clearmes=new String [clear.length];
        
        
        int [] ip=per.regresarIP();
        
        for(int i=0;i<ip.length;i++){
            clearmes[i]=clear[ip[i]-1];
        }
        ArrayList<String>llaves=keys.keys();
         ArrayList<String>llavesdes=new ArrayList<String>();
        for(int i=keys.keys().size()-1;i>=0;i--){
            llavesdes.add(llaves.get(i));
        }
        
        for(int i=0;i<32;i++){
            L[i]=clearmes[i];
        }
        int contador=0;
        for(int i=32;i<clearmes.length;i++){
            R[contador]=clearmes[i];
            contador++;
        }
        
       
        for(int i=0;i<16;i++){
            int exp[]=per.regresarE();
            String [] mensajexpandido=new String[48];
            String mensajellaves="";
            String [] llaveturno=llavesdes.get(i).split("");
            for(int l=0;l<exp.length;l++){
              mensajexpandido[l]=R[exp[l]-1];
           }
            for(int k=0;k<mensajexpandido.length;k++){ 
                mensajellaves=mensajellaves+xor.ESXOR(mensajexpandido[k],llaveturno[k]);
            }
            smen=new SCaja(mensajellaves);
            String [] mensajesS=smen.mensajeS().split("");
            int P[]=per.regresarP();
            String [] mensajeP=new String[32];
            for(int l=0;l<P.length;l++){
              mensajeP[l]=mensajesS[P[l]-1];
           }
            String RFinal="";
           for(int k=0;k<mensajeP.length;k++){
                RFinal=RFinal+xor.ESXOR(L[k],mensajeP[k]);
            }
            L=R;
            R=RFinal.split("");
        }
        String mensajeFinal="";
        for(int i=0;i<R.length;i++){
            mensajeFinal=mensajeFinal +R[i];
        }
        for(int i=0;i<L.length;i++){
            mensajeFinal=mensajeFinal +L[i];
        }
        String[] PermutacionFinal=mensajeFinal.split("");
        int [] IP1=per.regresarIP1();
        String[] mensajeSalida=new String[64];
        for(int i=0;i<IP1.length;i++){
            mensajeSalida[i]=PermutacionFinal[IP1[i]-1];
        }
         ClaveHex convertidor=new ClaveHex();
             String mensajeDescifrado=convertidor.BinDecimal(mensajeSalida);
             
        return mensajeDescifrado;
    }
        
}
