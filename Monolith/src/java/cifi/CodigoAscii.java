/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cifi;

/**
 *
 * @author memo0
 */
import java.util.Scanner;
 
public class CodigoAscii {
     
    public static void main(String[] args) {
        CambioConversion pCambio = new CambioConversion();
        Scanner miScanner = new Scanner(System.in);
        int aCar;
        char ele;
        int opcion;
         
        do{
        System.out.println("Pulse 1 para pasar de carácter a código Ascii o "
                + "pulse 2 para convertir código Ascii en carácter.");
        opcion = miScanner.nextInt();
        }
        while(opcion >2);
         
        if(opcion == 1){
            System.out.println("Escriba el carácter a pasar a Ascii: ");
            ele = miScanner.next().charAt(0);
            pCambio.aAscii(ele);
            System.out.println(pCambio.getAscii());
             
        }else{
            System.out.println("Escriba el código Ascii a pasar a carácter: ");
            aCar = miScanner.nextInt();
            pCambio.aCaracter(aCar);
            System.out.println(pCambio.getCaracter());
        }
    }
     
}
 
class CambioConversion{
    private int cambio;
    private char caracter;
     
    public void aAscii(char caracter) {
            cambio = (int)caracter;
    }
     
    public void aCaracter(int numero) {
        caracter = (char)numero;
    }
     
    public int getAscii(){
        return cambio;
    }
    public char getCaracter() {
        return caracter;
    }
}
