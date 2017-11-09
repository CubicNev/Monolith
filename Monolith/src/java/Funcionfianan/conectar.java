/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Funcionfianan;

import static java.lang.System.out;
import java.sql.*;

/**
 *
 * @author memo0
 */
public class conectar {

    public void guardar(String titulo) {
        //titulo = request.getParameter("titulo");

        Connection c = null;
        Statement sta = null;
        ResultSet r = null;

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
            sta = c.createStatement();
            sta.executeUpdate("insert into Finanzas values ('" + titulo + "','" + 0 + "','" + 0 + "','" + 0 + "');");
            out.println("");
            out.println("<h2>'"+titulo+"'</h2>");
            out.print("<script> alert('Te has registrado exitosamente'); </script>");
        }catch (InstantiationException | IllegalAccessException
                | ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
