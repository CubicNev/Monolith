/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "CambioActividad", urlPatterns = {"/CambioActividad"})
public class CambiosUsuarios  extends HttpServlet {
    private String Nombre;
    private String Correo;
    private String Password;
    private int Edad;
    private String Pais;
    private String Direccion;
    private String Institucion;
    private String NivelEstudios;
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
        DataBase db = null;
        try {
            db = new DataBase();
        } catch (ClassNotFoundException ex) {
           
        } catch (InstantiationException ex) {
            out.print(ex.toString());
        } catch (IllegalAccessException ex) {
                        out.print(ex.toString());
        } catch (SQLException ex) {
                      out.print(ex.toString());
        }

        try {
           
            HttpSession sesion = request.getSession();
            String usuario=sesion.getAttribute("usuario").toString();
            Usuario user=new Usuario();
            Nombre = request.getParameter("nombre");
        Institucion = request.getParameter("direccion");
        NivelEstudios = request.getParameter("estudios");
        Edad = Integer.parseInt(request.getParameter("edad"));
        Pais = request.getParameter("pais");
        Direccion = request.getParameter("direccion");
        Correo = request.getParameter("correo");
        Password = request.getParameter("contra");
        
        user.setNombre(Nombre);
        user.setInstitucion(Institucion);
        user.setNivelEstudios(NivelEstudios);
        user.setEdad(Edad);
        user.setPais(Pais);
        user.setDireccion(Direccion);
        user.setCorreo(Correo);
        user.setPassword(Password);
        db.CambiarUsuario(user,usuario);
        sesion.setAttribute("usuario",Nombre);
            
            response.sendRedirect("InicioSesion.jsp");
            
        } catch (Exception ex) {
              out.print(ex.toString() +"Clase Cambio error");
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
}
