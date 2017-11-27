
package kerberosserver;
import java.util.ArrayList;

public class Hash {
    
    
    public String Boleto(String NombreUsuario,String Password){
       ArrayList<String> listahash= new ArrayList<String>();
       String Ticket="";
       XOR xor=new XOR();
       Binario bin=new Binario();
       for (int x=0;x<=NombreUsuario.length()-1;x++){
           listahash.add(bin.BinDecimal(NombreUsuario.codePointAt(x)));
       }
       for (int x=0;x<=Password.length()-1;x++){

           listahash.add(bin.BinDecimal(Password.codePointAt(x)));
       }
       
       for(int j=0;j<=listahash.size()-1;j++){

           if(j==0||j==1){
               Ticket=xor.operacionXOR(listahash.get(0),listahash.get(1));
           }else{
               Ticket=xor.operacionXOR(Ticket,listahash.get(j));
           }
       }
       return Ticket;
    }
    
    
     
}
