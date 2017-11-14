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


@WebServlet(name = "ActualizarChat", urlPatterns = {"/ActualizarChat"})
public class ActualizarChat extends HttpServlet {
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
       
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
          
            rs=st.executeQuery("select *from Mensaje where IDProyecto=1");
            while(rs.next()){
                out.println("<li class=\"left clearfix\"><span class=\"chat-img pull-left\">");
                            out.println("<img src=\"img/UserChat.png\" alt=\"User Avatar\" class=\"img-circle\" />");
                            out.println("</span>");
                            out.println("<div class=\"chat-body clearfix\">");
                            out.println("<div class=\"header\">");
                            out.println("<strong class=\"primary-font\">"+rs.getString("IDColaborador")+"</strong> <small class=\"pull-right text-muted\">");
                            out.println(" <span class=\"glyphicon glyphicon-time\"></span>Fecha:"+rs.getTimestamp("Fecha")+"</small>");
                            out.println("</div>");
                            out.println("<p>");
                            out.println(rs.getString("Contenido"));
                            out.println("</p>");
                            out.println("</div>");
                            out.println("</li>");
            }
            
            }catch(Exception ex){
                out.println(ex.toString());
            }
    }
}