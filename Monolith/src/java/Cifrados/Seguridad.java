package Cifrados;

/**
 *
 * @author Alex
 */
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

//http://www.jc-mouse.net/
public class Seguridad {

    private SecretKey key;
    private Cipher cipher;
    private final String algoritmo = "AES";
    private final int keysize = 16;

    //POR SI LES SIRVE PRROS :v
    //algoritmo de encriptacion / modo / relleno
    //Acepta varios tipos de cifrado (los siguientes algoritmos) la API de java desde DES (Data Encryption Standard), TripleDES, AES, RC2, RC4, and RC5, Blowfish, PBE. (Password Based Encryption).
    //Tambien acepta varios modos de encriptacion como:  Ninguno, ECB (Electronic Code Book), CBC (Cipher Block Chaining), CFB (Cipher Feedback Mode), OFB (Output Feedback Mode), PCBC (Propagating Cipher Block Chaining)
    //Tambien acepta varios modos de relleno : Ninguno, PKCS5, OAEP, SSL3.
    //Crea la Llave para encriptar/desencriptar
    public void addKey(String value) {
        byte[] valuebytes = value.getBytes();
        key = new SecretKeySpec(Arrays.copyOf(valuebytes, keysize), algoritmo);
    }

    //Metodo para encriptar un texto
    public String encriptar(String texto) {
        String value = "";
        try {
            cipher = Cipher.getInstance(algoritmo);
            cipher.init(Cipher.ENCRYPT_MODE, key);
            byte[] textobytes = texto.getBytes();
            byte[] cipherbytes = cipher.doFinal(textobytes);
            value = new BASE64Encoder().encode(cipherbytes);
        } catch (NoSuchAlgorithmException | NoSuchPaddingException | InvalidKeyException | IllegalBlockSizeException | BadPaddingException ex) {
            System.err.println(ex.getMessage());
        }
        return value;
    }

    //  Metodo para desencriptar un texto
    public String desencriptar(String texto) {
        String str = "";
        try {
            byte[] value = new BASE64Decoder().decodeBuffer(texto);
            cipher = Cipher.getInstance(algoritmo);
            cipher.init(Cipher.DECRYPT_MODE, key);
            byte[] cipherbytes = cipher.doFinal(value);
            str = new String(cipherbytes);
        } catch (InvalidKeyException | IllegalBlockSizeException | BadPaddingException | IOException | NoSuchAlgorithmException | NoSuchPaddingException ex) {
            System.err.println(ex.getMessage());
        }
        return str;
    }
}
