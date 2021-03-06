package FunciónMonolith;

import java.io.*;
import java.net.*;
import java.sql.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "Ingreso", urlPatterns = {"/Ingreso"})
public class Ingreso extends HttpServlet {

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
        Usuario u = new Usuario();
        DataBase db = null;
        try {

            Nombre = request.getParameter("nombre");
            Institucion = request.getParameter("direccion");
            NivelEstudios = request.getParameter("estudios");
            Edad = Integer.parseInt(request.getParameter("edad"));
            Pais = request.getParameter("pais");
            Direccion = request.getParameter("direccion");
            Correo = request.getParameter("correo");
            Password = request.getParameter("contra");
            ServerCliente envio = new ServerCliente();
            InetAddress address = InetAddress.getLocalHost();
             try {

            envio.EnviarRegistroUsuario(Nombre, Password, address.getHostAddress());

            u.setNombre(Nombre);
            u.setInstitucion(Institucion);
            u.setNivelEstudios(NivelEstudios);
            u.setEdad(Edad);
            u.setPais(Pais);
            u.setDireccion(Direccion);
            u.setCorreo(Correo);
            u.setPassword(Password);
            db = new DataBase();
            try {
                db.IngresarUsuario(u);
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", Nombre);
                sesion.setAttribute("password", Password);
                response.sendRedirect("InicioSesion.jsp");
                

            } catch (SQLException ex) {
                out.print(ex.toString());
            
            }
        } catch (Exception ex) {
            out.print(ex.toString());
        }

            
        } catch (Exception ex) {
            out.println(ex.toString());
        }

        
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
