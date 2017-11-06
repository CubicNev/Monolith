
package FunciónMonolith;

import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "Entrada", urlPatterns = {"/Entrada"})
public class Entrada extends HttpServlet {
  
    private Statement st = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
        }catch(Exception ex){
                ex.toString();
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
        HttpSession sesion=request.getSession();
        if(sesion.isNew()){
        String Usuario = request.getParameter("usuario");
        String Password = request.getParameter("contrasenia");
         
        sesion.setAttribute("usuario", Usuario);
      
       
       
        try {
            st=db.c.createStatement();
            rs=st.executeQuery("select * from Usuario where NombreUsuario='" + Usuario + "';");
            if(rs.next()){
                rs=st.executeQuery("select * from Usuario where NombreUsuario='"+Usuario+"' and Contrasena='"+Password+"';");
               if(rs.next()){
                  
                   out.println("<html>");
                out.println("<head>");
                out.println(" <title>Con secion</title>");
                out.println("<meta charset='UTF-8'>");
                out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
                out.println("<link href='Css/bootstrap.css' rel='stylesheet' type='text/css'>");
                out.println("<link href='Css/test1.css' rel='stylesheet' type='text/css'>");        
               out.println("<link href='Css/bootstraplogin.css' rel='stylesheet' type='text/css'>");
                out.println("<link href='https://fonts.googleapis.com/css?family=Mukta' rel='stylesheet'>");
                out.println("<link rel='stylesheet' href='Css/Menu.css'>");
                out.println("<script src='js/jquery-3.2.1.min.js'></script>");
                out.println("<script src='js/popper.min.js'></script>");
                out.println("<script src='js/bootstrap.min.js'></script>");
                out.println("<script type='text/javascript'>");
               out.println(
                       "function agrandar(){"+
               "var tamano = document.getElementById('uno');"+
               "var tamano2 = document.getElementById('dos');"+
               "var tamano3 = document.getElementById('tres');"+
               "var tamano4 = document.getElementById('cuatro');"+
               "var tamano5 = document.getElementById('cinco');"+
               "var tamano6 = document.getElementById('seis');"+
               "tamano.style.height = 130 + '%';"+
               "tamano2.style.height = 100 + '%';"+
               "tamano3.style.height = 100 + '%';"+
               "tamano4.style.height = 100 + '%';"+
               "tamano5.style.height = 100 + '%';"+
               "tamano6.style.height = 100 + '%';}"+
            
           "function agrandar2() {"+
               " var tamano = document.getElementById('uno');"+
                "var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
               "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');"+
                "tamano.style.height = 100 + '%';"+
                "tamano2.style.height = 130 + '%';"+
                "tamano3.style.height = 100 + '%';"+
                "tamano4.style.height = 100 + '%';"+
                "tamano5.style.height = 100 + '%';"+
                "tamano6.style.height = 100 + '%'; }"+

           
            "function agrandar3() {"+
                "var tamano = document.getElementById('uno');"+
                "var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
                "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');" +
                "tamano.style.height = 100 + '%';"+
               "tamano2.style.height = 100 + '%';"+
               "tamano3.style.height = 130 + '%';"+
               "tamano4.style.height = 100 + '%';"+
                "tamano5.style.height = 100 + '%';"+
                "tamano6.style.height = 100 + '%';}"+

            
            "function agrandar4() {"+
                "var tamano = document.getElementById('uno');"+
                "var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
                "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');"+
                "tamano.style.height = 100 + '%';"+
                "tamano2.style.height = 100 + '%';"+
                "tamano3.style.height = 100 + '%';"+
                "tamano4.style.height = 130 + '%';"+
                "tamano5.style.height = 100 + '%';"+
                "tamano6.style.height = 100 + '%';}"+

            
           " function agrandar5() {"+
                "var tamano = document.getElementById('uno');"+
                "var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
                "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');"+
                "tamano.style.height = 100 + '%';"+
                "tamano2.style.height = 100 + '%';"+
                "tamano3.style.height = 100 + '%';"+
                "tamano4.style.height = 100 + '%';"+
                "tamano5.style.height = 130 + '%';"+
                "tamano6.style.height = 100 + '%';}"+

            "function agrandar6() {"+
                "var tamano = document.getElementById('uno');"+
               " var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
                "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');"+
                "tamano.style.height = 100 + '%';"+
                "tamano2.style.height = 100 + '%';"+
                "tamano3.style.height = 100 + '%';"+
                "tamano4.style.height = 100 + '%';"+
                "tamano5.style.height = 100 + '%';"+
                "tamano6.style.height = 130 + '%';}"+
        "</script>");
                out.println("</head>");
                out.println("<body>");
                  out.println("<div class='container-fluid' style='padding-left:13px;padding-right:13px;'>");
                    out.println("<nav class='navbar navbar-expand-lg navbar-light bg-light'>");
                      out.println("<a class='navbar-brand' href='#'>Monlithe</a>");
                      out.println(" <button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarOpcciones' aria-controls='navbarNavAltMarkup' aria-expanded='false' aria-label='Toggle navigation'>");
                      out.println("<span class='navbar-toggler-icon'></span>");
                      out.println(" </button>");
                      out.println(" <div class='collapse navbar-collapse' id='navbarOpcciones'>");
                         out.println("<div class='navbar-nav'>");
                         out.println("<a class='nav-link dropdown-toggle' href='#' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>");
                         out.println(" Usuario</a>");
                     out.println(" <div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>");
                     out.println("<a class='dropdown-item' >Usuario:"+Usuario +"</a>"+  
                            "<a class='dropdown-item' href='#'>Configuracion</a>"+
                            "<a class='dropdown-item' href='#'>Cerrar Sesion</a>");
                     out.println("</div>"+
                     "</div>"+
                    "</nav>");
                     out.println("<header>");
                       out.println("<div class='col-12'>");
                         out.println(" <div class=\"contenedor\" id=\"uno\" onclick=\"location.href='Entrada';\" ondblclick=\"minimizar();\">");
                           out.println(" <img class='icon' src='img/home.png' alt='HomeLogo'>");
                         out.println("</div>");
                        
                         out.println("<div class='contenedor' id='dos' onclick='location.href='Examenes.html';' >");
                           out.println(" <img class='icon' src='img/examen.png' alt='ExamenLogo'>");
                         out.println("</div>");
                         
                         out.println(" <div class='contenedor' id='tres' onclick='location.href='Proyectos.html';' >");
                           out.println(" <img class='icon' src='img/proyectos.png' alt='ProyectosLogo'>");
                         out.println("</div>");
                   
                        out.println("<div class=\"contenedor\" id=\"cuatro\"   onclick=\"agrandar4();\" ondblclick=\"minimizar();\">");
                           out.println(" <img class=\"icon\" src=\"img/tareas.png\" alt=\"TareasLogo\">");
                        out.println("</div>");
            
                        out.println("<div class='contenedor' id='cinco' onclick='agrandar5();'>");
                          out.println("<img class='icon' src='img/finanza.png' alt='FinanzasLogo'>");
                        out.println("</div>");
                       
                        out.println(" <div class='contenedor' id='seis' onclick='agrandar6();'>");
                             out.println("<img class='icon' src='img/ruta.png' alt='RutaLogo'>");
                        out.println("</div>");
                        
                        out.println("</div>"+
              " </header>");
                     out.println("</div>");
                out.println("</body>");
                out.println("</html>");
               }else{
                   out.println("Opc1");
               }
            }else{
                out.println("Opc1");
            }
        } catch (SQLException ex) {
             out.print(ex.toString());
        }
      }else{
            String Usuario=sesion.getAttribute("usuario").toString();
            out.println("<html>");
                out.println("<head>");
                out.println(" <title>Sin Sesion</title>");
                out.println("<meta charset='UTF-8'>");
                out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
                out.println("<link href='Css/bootstrap.css' rel='stylesheet' type='text/css'>");
                out.println("<link href='Css/test1.css' rel='stylesheet' type='text/css'>");        
               out.println("<link href='Css/bootstraplogin.css' rel='stylesheet' type='text/css'>");
                out.println("<link href='https://fonts.googleapis.com/css?family=Mukta' rel='stylesheet'>");
                out.println("<link rel='stylesheet' href='Css/Menu.css'>");
                out.println("<script src='js/jquery-3.2.1.min.js'></script>");
                out.println("<script src='js/popper.min.js'></script>");
                out.println("<script src='js/bootstrap.min.js'></script>");
                out.println("<script type='text/javascript'>");
               out.println(
                       "function agrandar(){"+
               "var tamano = document.getElementById('uno');"+
               "var tamano2 = document.getElementById('dos');"+
               "var tamano3 = document.getElementById('tres');"+
               "var tamano4 = document.getElementById('cuatro');"+
               "var tamano5 = document.getElementById('cinco');"+
               "var tamano6 = document.getElementById('seis');"+
               "tamano.style.height = 130 + '%';"+
               "tamano2.style.height = 100 + '%';"+
               "tamano3.style.height = 100 + '%';"+
               "tamano4.style.height = 100 + '%';"+
               "tamano5.style.height = 100 + '%';"+
               "tamano6.style.height = 100 + '%';}"+
            
           "function agrandar2() {"+
               " var tamano = document.getElementById('uno');"+
                "var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
               "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');"+
                "tamano.style.height = 100 + '%';"+
                "tamano2.style.height = 130 + '%';"+
                "tamano3.style.height = 100 + '%';"+
                "tamano4.style.height = 100 + '%';"+
                "tamano5.style.height = 100 + '%';"+
                "tamano6.style.height = 100 + '%'; }"+

           
            "function agrandar3() {"+
                "var tamano = document.getElementById('uno');"+
                "var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
                "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');" +
                "tamano.style.height = 100 + '%';"+
               "tamano2.style.height = 100 + '%';"+
               "tamano3.style.height = 130 + '%';"+
               "tamano4.style.height = 100 + '%';"+
                "tamano5.style.height = 100 + '%';"+
                "tamano6.style.height = 100 + '%';}"+

            
            "function agrandar4() {"+
                "var tamano = document.getElementById('uno');"+
                "var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
                "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');"+
                "tamano.style.height = 100 + '%';"+
                "tamano2.style.height = 100 + '%';"+
                "tamano3.style.height = 100 + '%';"+
                "tamano4.style.height = 130 + '%';"+
                "tamano5.style.height = 100 + '%';"+
                "tamano6.style.height = 100 + '%';}"+

            
           " function agrandar5() {"+
                "var tamano = document.getElementById('uno');"+
                "var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
                "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');"+
                "tamano.style.height = 100 + '%';"+
                "tamano2.style.height = 100 + '%';"+
                "tamano3.style.height = 100 + '%';"+
                "tamano4.style.height = 100 + '%';"+
                "tamano5.style.height = 130 + '%';"+
                "tamano6.style.height = 100 + '%';}"+

            "function agrandar6() {"+
                "var tamano = document.getElementById('uno');"+
               " var tamano2 = document.getElementById('dos');"+
                "var tamano3 = document.getElementById('tres');"+
                "var tamano4 = document.getElementById('cuatro');"+
                "var tamano5 = document.getElementById('cinco');"+
                "var tamano6 = document.getElementById('seis');"+
                "tamano.style.height = 100 + '%';"+
                "tamano2.style.height = 100 + '%';"+
                "tamano3.style.height = 100 + '%';"+
                "tamano4.style.height = 100 + '%';"+
                "tamano5.style.height = 100 + '%';"+
                "tamano6.style.height = 130 + '%';}"+
        "</script>");
                out.println("</head>");
                out.println("<body>");
                  out.println("<div class='container-fluid' style='padding-left:13px;padding-right:13px;'>");
                    out.println("<nav class='navbar navbar-expand-lg navbar-light bg-light'>");
                      out.println("<a class='navbar-brand' href='#'>Monlithe</a>");
                      out.println(" <button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarOpcciones' aria-controls='navbarNavAltMarkup' aria-expanded='false' aria-label='Toggle navigation'>");
                      out.println("<span class='navbar-toggler-icon'></span>");
                      out.println(" </button>");
                      out.println(" <div class='collapse navbar-collapse' id='navbarOpcciones'>");
                         out.println("<div class='navbar-nav'>");
                         out.println("<a class='nav-link dropdown-toggle' href='#' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>");
                         out.println(" Usuario</a>");
                     out.println(" <div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>");
                     out.println("<a class='dropdown-item' >Usuario:"+Usuario +"</a>"+  
                            "<a class='dropdown-item' href='#'>Configuracion</a>"+
                            "<a class='dropdown-item' href='#'>Cerrar Sesion</a>");
                     out.println("</div>"+
                     "</div>"+
                    "</nav>");
                     out.println("<header>");
                       out.println("<div class='col-12'>");
                         out.println(" <div class=\"contenedor\" id=\"uno\" onclick=\"location.href='Entrada';\" ondblclick=\"minimizar();\">");
                           out.println(" <img class='icon' src='img/home.png' alt='HomeLogo'>");
                         out.println("</div>");
                        
                         out.println("<div class='contenedor' id='dos' onclick='location.href='Examenes.html';' >");
                           out.println(" <img class='icon' src='img/examen.png' alt='ExamenLogo'>");
                         out.println("</div>");
                         
                         out.println(" <div class='contenedor' id='tres' onclick='location.href='Proyectos.html';' >");
                           out.println(" <img class='icon' src='img/proyectos.png' alt='ProyectosLogo'>");
                         out.println("</div>");
                   
                        out.println("<div class=\"contenedor\" id=\"cuatro\"   onclick=\"location.href='Entrada';\" ondblclick=\"minimizar();\">");
                           out.println(" <img class=\"icon\" src=\"img/tareas.png\" alt=\"TareasLogo\">");
                        out.println("</div>");
            
                        out.println("<div class='contenedor' id='cinco' onclick='agrandar5();'>");
                          out.println("<img class='icon' src='img/finanza.png' alt='FinanzasLogo'>");
                        out.println("</div>");
                       
                        out.println(" <div class='contenedor' id='seis' onclick='agrandar6();'>");
                             out.println("<img class='icon' src='img/ruta.png' alt='RutaLogo'>");
                        out.println("</div>");
                        
                        out.println("</div>"+
              " </header>");
                     out.println("</div>");
                out.println("</body>");
                out.println("</html>");
        } 
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}