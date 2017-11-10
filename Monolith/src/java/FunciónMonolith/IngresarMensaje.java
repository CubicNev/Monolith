/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunciónMonolith;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "IngresarMensaje", urlPatterns = {"/IngresarMensaje"})
public class IngresarMensaje extends HttpServlet{
    
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         try{
            String driver = "com.mysql.jdbc.Driver";
            String ruta = "jdbc:mysql://localhost/monolith";
            String usuario = "root";
            String clave = "n0m3l0";
            Connection c = null;
            Statement st = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            Class.forName(driver).newInstance();
            c = DriverManager.getConnection(ruta, usuario, clave);
            st = c.createStatement();
            HttpSession sesion = request.getSession();
            String usaurio=sesion.getAttribute("usuario").toString();
            DataBase db=new DataBase();
             int numIDCol=db.ConsultarColaborador(usaurio);
                       String sql1="insert into Mensaje (IDConversacionProyecto,IDColaborador,OrdenConversacion,Contenido)"+
                               "values(?,?,?,?)";
                       ps=c.prepareStatement(sql1);
                       ps.setInt(1, 1);
                       ps.setInt(2,numIDCol);
                       ps.setInt(3,1);
                       ps.setString(4,request.getParameter("Mensaje"));
                       ps.execute();
                       response.sendRedirect("ChatWindow");
          }catch(SQLException ex){
            out.println(ex.toString());
        }
            
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ChatWindow.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(ChatWindow.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(ChatWindow.class.getName()).log(Level.SEVERE, null, ex);
        }
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
      
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

