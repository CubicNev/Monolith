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


 
@WebServlet(name = "userLogin", urlPatterns = {"/userLogin"})
public class userLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         String driver = "com.mysql.jdbc.Driver";
            String ruta = "jdbc:mysql://localhost/monolith";
            String usuario = "root";
            String clave = "n0m3l0";
            Connection c = null;
            Statement st = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            PrintWriter out=response.getWriter();
            try{
                Class.forName(driver).newInstance();
            c = DriverManager.getConnection(ruta, usuario, clave);
            st = c.createStatement();
            String user=request.getParameter("u");
            String contra=request.getParameter("c");
            rs=st.executeQuery("select *from Usuario where NombreUsuario='"+user+"'");
            if(rs.next()){
                rs=st.executeQuery("select *from Usuario where NombreUsuario='"+user+"' and Contrasena='ramv1357';");
                if(rs.next()){
                   HttpSession sesion = request.getSession();
                   sesion.setAttribute("usuario", user);
                    sesion.setAttribute("password", contra);
                    response.sendRedirect("InicioSesion.jsp");
                }else{
                    out.println("<p>Contraseña mal puesta</p>");
                }
            }else{
                out.println("<p>No existe el usuario</p>");
            }
            
            }catch(Exception ex){
                out.println(ex.toString());
            }
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
