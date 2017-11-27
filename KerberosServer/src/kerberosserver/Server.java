/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kerberosserver;

import java.net.*;
import java.io.*;
import java.sql.*;

public class Server {

    ServerSocket server;
    Socket socket;
    int puerto = 5000;
    BufferedReader entrada;
    DataOutputStream salida;
    String usuario = "root";
    String driver = "com.mysql.jdbc.Driver";
    String ruta = "jdbc:mysql://localhost/ServerTicket";
    String clave = "n0m3l0";
    Connection c = null;
    Statement st = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void conexion() {
        try {
            server = new ServerSocket(puerto);

            while (true) {
                socket = server.accept();
                entrada = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                salida = new DataOutputStream(socket.getOutputStream());
                String NombreUsuario = entrada.readLine();
                String Contra = entrada.readLine();
                String Ticket = "";
                Hash boletin = new Hash();
                Ticket = boletin.Boleto(NombreUsuario, Contra);
                try {
                    Class.forName(driver).newInstance();
                    c = DriverManager.getConnection(ruta, usuario, clave);
                    st = c.createStatement();
                    String sql = "insert into UsuarioTicket(NombreUsuario,Ticket) values (?,?);";
                    ps = c.prepareStatement(sql);
                    ps.setString(1, NombreUsuario);
                    ps.setString(2, Ticket);
                    ps.execute();
                    c.close();

                } catch (SQLException ex) {
                    System.out.println(ex.toString());
                }
               

            }
        } catch (Exception ex) {
            System.out.println(ex.toString());
        }
    }

}
