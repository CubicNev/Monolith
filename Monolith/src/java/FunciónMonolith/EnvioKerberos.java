/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.io.*;
import java.net.InetAddress;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "EnvioKerberos", urlPatterns = {"/EnvioKerberos"})
public class EnvioKerberos extends HttpServlet {

    private String Nombre;
    private String Password;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Ingreso</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Ingreso at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        Usuario u = new Usuario();
        DataBase db = null;
        try {
            Nombre = request.getParameter("usuario");
            Password = request.getParameter("contrasenia");
            ServerCliente envio = new ServerCliente();
            try {
                Hash tabla = new Hash();
                String nombrecifrado = tabla.CifradoUsuario(Nombre, Password);
                 InetAddress address = InetAddress.getLocalHost();
                envio.EnviarPeticionUsuario(Nombre, nombrecifrado,address.getHostAddress(),Password);
                
                
            } catch (Exception ex) {
                out.print(ex.toString());
            }

        } catch (Exception ex) {

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
