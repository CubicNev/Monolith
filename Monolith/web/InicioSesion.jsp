<%-- 
    Document   : InicioSesion
    Created on : 23/10/2017, 11:34:35 AM
    Author     : Alumno
--%>

<%@page import="java.sql.*,java.io.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    HttpSession sesion = request.getSession();
    String Usuario = request.getParameter("usuario");
    String Password = request.getParameter("contrasenia");
    Connection con = null;
    Statement sta = null;
    ResultSet r = null;

    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
        sta = con.createStatement();
    } catch (SQLException error) {
        out.print(error.toString());
    }

    //////////////////////////////////////////////////////////////
    try {
        r = sta.executeQuery("select * from Usuario where NombreUsuario='" + Usuario + "';");
        if (r.next()) {
            /*String nombre = r.getString("NombreUsuario");
            //String id = r.getString("idUsuario");  // Aquí tenía dobles punto y coma
            String contrasenia = r.getString("Contrasena"); // Aquí tenía dobles punto y coma
            int id = 1;
            if (contrasenia.equals(Password)) {
                sesion.setAttribute("usuario",Usuario);  // Estos pasos son muy importantes porque con estas variables que le agrego a la sesión voy a estar trabajando todo el proytecto
                sesion.setAttribute("id", id);
                out.println("<script>window.location='Index.jsp';</script>");
            } else {
                out.println("<script>alert('Contraseña incorrecta');</script>");
                out.println("<script>window.location='Index.jsp';</script>");
            }
        } else {
            out.println("<script>alert('No estas registrado.');</script>");
            out.println("<script>window.location='registro.html';</script>");
        }*/
            r=sta.executeQuery("select * from Usuario where NombreUsuario='"+Usuario+"' and Contrasena='"+Password+"';");
            if(r.next()){
                sesion.setAttribute("usuario",Usuario);
                sesion.setAttribute("password",Password);
                out.println("<html>");
                out.println("<head>");
                out.println(" <title>Actividades</title>");
                out.println("<meta charset='UTF-8'>");
                out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
                out.println(" <link href='Css/actividadstyle.css' rel='stylesheet' type='text/css'>");
                out.println(" <link href='Css/bootstrap.css' rel='stylesheet' type='text/css>'");
                out.println(" <link href='Css/test1.css' rel='stylesheet' type='text/css'>");        
               out.println("<link href='Css/bootstraplogin.css' rel='stylesheet' type='text/css'>");
                out.println("<link href='https://fonts.googleapis.com/css?family=Mukta' rel='stylesheet'>");
                out.println("<link rel='stylesheet' href='Css/Menu.css'>");
                out.println("<script src='js/jquery-3.2.1.min.js'></script>");
                out.println("<script src='js/popper.min.js'></script>");
                out.println("<script src='js/bootstrap.min.js'></script>");
                out.println("<script type='text/javascript'>");
               out.println("  function agrandar() {" +
                "var tamaño = document.getElementById('uno');"+
                " var tamaño2 = document.getElementById('dos');"+
                "var tamaño3 = document.getElementById('tres');"+
                "var tamaño4 = document.getElementById('cuatro');"+
                "var tamaño5 = document.getElementById('cinco');"+
                "var tamaño6 = document.getElementById('seis');"+
                "tamaño.style.height = 130 + '%';"+
               "tamaño2.style.height = 100 + '%';"+
                "tamaño3.style.height = 100 + '%';"+
                "tamaño4.style.height = 100 + '%';"+
                "tamaño5.style.height = 100 + '%';"+
                "tamaño6.style.height = 100 + '%';}"+
            
           "function agrandar2() {"+
               " var tamaño = document.getElementById('uno');"+
                "var tamaño2 = document.getElementById('dos');"+
                "var tamaño3 = document.getElementById('tres');"+
                "var tamaño4 = document.getElementById('cuatro');"+
               "var tamaño5 = document.getElementById('cinco');"+
                "var tamaño6 = document.getElementById('seis');"+
                "tamaño.style.height = 100 + '%';"+
                "tamaño2.style.height = 130 + '%';"+
                "tamaño3.style.height = 100 + '%';"+
                "tamaño4.style.height = 100 + '%';"+
                "tamaño5.style.height = 100 + '%';"+
                "tamaño6.style.height = 100 + '%'; }"+

           
            "function agrandar3() {"+
                "var tamaño = document.getElementById('uno');"+
                "var tamaño2 = document.getElementById('dos');"+
                "var tamaño3 = document.getElementById('tres');"+
                "var tamaño4 = document.getElementById('cuatro');"+
                "var tamaño5 = document.getElementById('cinco');"+
                "var tamaño6 = document.getElementById('seis');" +
                "tamaño.style.height = 100 + '%';"+
               "tamaño2.style.height = 100 + '%';"+
               "tamaño3.style.height = 130 + '%';"+
               "tamaño4.style.height = 100 + '%';"+
                "tamaño5.style.height = 100 + '%';"+
                "tamaño6.style.height = 100 + '%';}"+

            
            "function agrandar4() {"+
                "var tamaño = document.getElementById('uno');"+
                "var tamaño2 = document.getElementById('dos');"+
                "var tamaño3 = document.getElementById('tres');"+
                "var tamaño4 = document.getElementById('cuatro');"+
                "var tamaño5 = document.getElementById('cinco');"+
                "var tamaño6 = document.getElementById('seis');"+
                "tamaño.style.height = 100 + '%';"+
                "tamaño2.style.height = 100 + '%';"+
                "tamaño3.style.height = 100 + '%';"+
                "tamaño4.style.height = 130 + '%';"+
                "tamaño5.style.height = 100 + '%';"+
                "tamaño6.style.height = 100 + '%';}"+

            
           " function agrandar5() {"+
                "var tamaño = document.getElementById('uno');"+
                "var tamaño2 = document.getElementById('dos');"+
                "var tamaño3 = document.getElementById('tres');"+
                "var tamaño4 = document.getElementById('cuatro');"+
                "var tamaño5 = document.getElementById('cinco');"+
                "var tamaño6 = document.getElementById('seis');"+
                "tamaño.style.height = 100 + '%';"+
                "tamaño2.style.height = 100 + '%';"+
                "tamaño3.style.height = 100 + '%';"+
                "tamaño4.style.height = 100 + '%';"+
                "tamaño5.style.height = 130 + '%';"+
                "tamaño6.style.height = 100 + '%';}"+

            "function agrandar6() {"+
                "var tamaño = document.getElementById('uno');"+
               " var tamaño2 = document.getElementById('dos');"+
                "var tamaño3 = document.getElementById('tres');"+
                "var tamaño4 = document.getElementById('cuatro');"+
                "var tamaño5 = document.getElementById('cinco');"+
                "var tamaño6 = document.getElementById('seis');"+
                "tamaño.style.height = 100 + '%';"+
                "tamaño2.style.height = 100 + '%';"+
                "tamaño3.style.height = 100 + '%';"+
                "tamaño4.style.height = 100 + '%';"+
                "tamaño5.style.height = 100 + '%';"+
                "tamaño6.style.height = 130 + '%';"+

            "'}');"+
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
                         out.println("<div class='contenedor' id='uno' onclick='location.href='Inicio.jsp';' ondblclick='minimizar();'>");
                           out.println(" <img class='icon' src='img/home.png' alt='HomeLogo'>");
                         out.println("</div>");
                        
                         out.println("<div class='contenedor' id='dos' onclick='location.href='Examenes.html';' ondblclick='minimizar();'>");
                           out.println(" <img class='icon' src='img/examen.png' alt='ExamenLogo'>");
                         out.println(" </div>");
                         
                         out.println(" <div class='contenedor' id='tres' onclick='location.href='Proyectos.html';' ondblclick='minimizar();'>");
                           out.println(" <img class='icon' src='img/proyectos.png' alt='ProyectosLogo'>");
                         out.println(" </div>");
                   
                        out.println("<div class='contenedor' id='cuatro'  onclick='location.href='Actividades.html';' ondblclick='minimizar();'>");
                           out.println("<img class='icon' src='img/tareas.png' alt='TareasLogo'>");
                        out.println("</div>");
            
                        out.println("<div class='contenedor' id='cinco' onclick='agrandar5();' ondblclick='minimizar();'>");
                          out.println("<img class='icon' src='img/finanza.png' alt='FinanzasLogo'>");
                        out.println("</div>");
                       
                        out.println(" <div class='contenedor' id='seis' onclick='agrandar6();' ondblclick='minimizar();'>");
                             out.println("<img class='icon' src='img/ruta.png' alt='RutaLogo'>");
                        out.println("</div>");
                        
                        out.println("</div>"+
              " </header>");
                     
                out.println("</body>");
                out.println("</html>");
                         
            }else{
                out.println("<h3>Contraseña mal puesta</h3>");
            }
        }else{
            out.println("<h3>Usuario Inexistente</h3>");
        }
                    
                   
    } catch (SQLException error) {
        out.print(error.toString());
    }


%>

