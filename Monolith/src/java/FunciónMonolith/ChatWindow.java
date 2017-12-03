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


@WebServlet(name = "ChatWindow", urlPatterns = {"/ChatWindow"})
public class ChatWindow extends HttpServlet {
    
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
             out.println("<html>");
            out.println("<head>");
     out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
     out.println("<link href=\"Css/Chat.css\" rel=\"stylesheet\" type=\"text/css\">");
      out.println("<link href=\"Css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">");
      out.println(" <script src=\"js/jquery-3.2.1.min.js\"></script> ");
      out.println("<script src=\"js/popper.min.js\"></script>");
      out.println("<script src=\"js/bootstrap.min.js\"></script>");
      out.println("<title>JSP Page</title>");  
      out.println("</head>");  
    out.println("<body>");
            
         out.println("<div class=\"container\">");
            out.println("<div class=\"row\" >");
               out.println("<div class=\"col-md-12\" >");
                out.println("<div class=\"panel panel-primary\">");
                out.println("<div class=\"panel-body\" style=\"height:420px;\">");
                 out.println("<ul class=\"chat\">");   
                    if(request.getParameter("Mensaje")!=null){
                       int numIDCol=db.ConsultarColaborador(usaurio);
                       String sql1="insert into Mensaje (IDConversacionProyecto,IDColaborador,OrdenConversacion,Contenido)"+
                               "values(?,?,?,?)";
                       ps=c.prepareStatement(sql1);
                       ps.setInt(1, 1);
                       ps.setInt(2,numIDCol);
                       ps.setInt(3,1);
                       ps.setString(4,request.getParameter("Mensaje"));
                       ps.execute();
                    } 
                        String sql2="select *from Mensaje";
                        rs=st.executeQuery(sql2);
                        while(rs.next()){
                            out.println("<li class=\"left clearfix\"><span class=\"chat-img pull-left\">");
                            out.println("<img src=\"img/UserChat.png\" alt=\"User Avatar\" class=\"img-circle\" />");
                            out.println("</span>");
                            out.println("<div class=\"chat-body clearfix\">");
                            out.println("<div class=\"header\">");
                            out.println("<strong class=\"primary-font\">"+rs.getString("IDColaborador")+"</strong> <small class=\"pull-right text-muted\">");
                            out.println(" <span class=\"glyphicon glyphicon-time\"></span>12 mins ago</small>");
                            out.println("</div>");
                            out.println("<p>");
                            out.println(rs.getString("Contenido"));
                            out.println("</p>");
                            out.println("</div>");
                            out.println("</li>");
                        }
                        
                  
                                      
                           out.println("</ul>"); 
                        out.println("</div>");
                        out.println("<div class=\"panel-footer\" >");
                        out.println("<div class=\"input-group\">");
                         out.println("<form name='ChatWindow method='post' action='ChatWindow'>");
                        out.println("<input id=\"btn-input\" type=\"text\" name='Mensaje'  placeholder=\"Type your message here...\" />");  
                        out.println("<span class=\"input-group-btn\">");    
                        out.println("<input type='submit' class=\"btn btn-warning btn-sm\" id=\"btn-chat\" value='Send'>");        
                        out.println("Send"); 
                        
                        out.println("</span>");
                        out.println("</form>");
                        out.println("</div>");        
                        out.println("</div>");    
                        out.println("</div>");
                     out.println("</div>");
                    out.println("</div>");
                  out.println(" </div>");
                out.println("</body>");
              out.println("</html>");

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
