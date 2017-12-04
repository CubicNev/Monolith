package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;;

public final class Actividades_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Actividades</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"Css/actividadstyle.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/test1.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/bootstraplogin.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Mukta\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/Menu.css\">\n");
      out.write("        <script src=\"js/jquery-3.2.1.min.js\"></script>\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            // funcion para aumentar la fuente\n");
      out.write("            function agrandar() {\n");
      out.write("                var tamaño = document.getElementById(\"uno\");\n");
      out.write("                var tamaño2 = document.getElementById(\"dos\");\n");
      out.write("                var tamaño3 = document.getElementById(\"tres\");\n");
      out.write("                var tamaño4 = document.getElementById(\"cuatro\");\n");
      out.write("                var tamaño5 = document.getElementById(\"cinco\");\n");
      out.write("                var tamaño6 = document.getElementById(\"seis\");\n");
      out.write("                tamaño.style.height = 130 + \"%\";\n");
      out.write("                tamaño2.style.height = 100 + \"%\";\n");
      out.write("                tamaño3.style.height = 100 + \"%\";\n");
      out.write("                tamaño4.style.height = 100 + \"%\";\n");
      out.write("                tamaño5.style.height = 100 + \"%\";\n");
      out.write("                tamaño6.style.height = 100 + \"%\";\n");
      out.write("            }\n");
      out.write("            function agrandar2() {\n");
      out.write("                var tamaño = document.getElementById(\"uno\");\n");
      out.write("                var tamaño2 = document.getElementById(\"dos\");\n");
      out.write("                var tamaño3 = document.getElementById(\"tres\");\n");
      out.write("                var tamaño4 = document.getElementById(\"cuatro\");\n");
      out.write("                var tamaño5 = document.getElementById(\"cinco\");\n");
      out.write("                var tamaño6 = document.getElementById(\"seis\");\n");
      out.write("                tamaño.style.height = 100 + \"%\";\n");
      out.write("                tamaño2.style.height = 130 + \"%\";\n");
      out.write("                tamaño3.style.height = 100 + \"%\";\n");
      out.write("                tamaño4.style.height = 100 + \"%\";\n");
      out.write("                tamaño5.style.height = 100 + \"%\";\n");
      out.write("                tamaño6.style.height = 100 + \"%\";\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function agrandar3() {\n");
      out.write("                var tamaño = document.getElementById(\"uno\");\n");
      out.write("                var tamaño2 = document.getElementById(\"dos\");\n");
      out.write("                var tamaño3 = document.getElementById(\"tres\");\n");
      out.write("                var tamaño4 = document.getElementById(\"cuatro\");\n");
      out.write("                var tamaño5 = document.getElementById(\"cinco\");\n");
      out.write("                var tamaño6 = document.getElementById(\"seis\");\n");
      out.write("                tamaño.style.height = 100 + \"%\";\n");
      out.write("                tamaño2.style.height = 100 + \"%\";\n");
      out.write("                tamaño3.style.height = 130 + \"%\";\n");
      out.write("                tamaño4.style.height = 100 + \"%\";\n");
      out.write("                tamaño5.style.height = 100 + \"%\";\n");
      out.write("                tamaño6.style.height = 100 + \"%\";\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function agrandar4() {\n");
      out.write("                var tamaño = document.getElementById(\"uno\");\n");
      out.write("                var tamaño2 = document.getElementById(\"dos\");\n");
      out.write("                var tamaño3 = document.getElementById(\"tres\");\n");
      out.write("                var tamaño4 = document.getElementById(\"cuatro\");\n");
      out.write("                var tamaño5 = document.getElementById(\"cinco\");\n");
      out.write("                var tamaño6 = document.getElementById(\"seis\");\n");
      out.write("                tamaño.style.height = 100 + \"%\";\n");
      out.write("                tamaño2.style.height = 100 + \"%\";\n");
      out.write("                tamaño3.style.height = 100 + \"%\";\n");
      out.write("                tamaño4.style.height = 130 + \"%\";\n");
      out.write("                tamaño5.style.height = 100 + \"%\";\n");
      out.write("                tamaño6.style.height = 100 + \"%\";\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function agrandar5() {\n");
      out.write("                var tamaño = document.getElementById(\"uno\");\n");
      out.write("                var tamaño2 = document.getElementById(\"dos\");\n");
      out.write("                var tamaño3 = document.getElementById(\"tres\");\n");
      out.write("                var tamaño4 = document.getElementById(\"cuatro\");\n");
      out.write("                var tamaño5 = document.getElementById(\"cinco\");\n");
      out.write("                var tamaño6 = document.getElementById(\"seis\");\n");
      out.write("                tamaño.style.height = 100 + \"%\";\n");
      out.write("                tamaño2.style.height = 100 + \"%\";\n");
      out.write("                tamaño3.style.height = 100 + \"%\";\n");
      out.write("                tamaño4.style.height = 100 + \"%\";\n");
      out.write("                tamaño5.style.height = 130 + \"%\";\n");
      out.write("                tamaño6.style.height = 100 + \"%\";\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            function agrandar6() {\n");
      out.write("                var tamaño = document.getElementById(\"uno\");\n");
      out.write("                var tamaño2 = document.getElementById(\"dos\");\n");
      out.write("                var tamaño3 = document.getElementById(\"tres\");\n");
      out.write("                var tamaño4 = document.getElementById(\"cuatro\");\n");
      out.write("                var tamaño5 = document.getElementById(\"cinco\");\n");
      out.write("                var tamaño6 = document.getElementById(\"seis\");\n");
      out.write("                tamaño.style.height = 100 + \"%\";\n");
      out.write("                tamaño2.style.height = 100 + \"%\";\n");
      out.write("                tamaño3.style.height = 100 + \"%\";\n");
      out.write("                tamaño4.style.height = 100 + \"%\";\n");
      out.write("                tamaño5.style.height = 100 + \"%\";\n");
      out.write("                tamaño6.style.height = 130 + \"%\";\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <!--Barra de usuario-->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light\" style=\"background-color: #00838F;\">\n");
      out.write("            <a class=\"navbar-brand text-white\" href=\"#\">\n");
      out.write("                <img src=\"img/Logo.svg\" width=\"30\" height=\"30\" class=\"d-inline-block align-top\" alt=\"Logo\">\n");
      out.write("                Monolith\n");
      out.write("            </a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("             </button>\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\n");
      out.write("\n");
      out.write("                <div class=\"navbar-nav ml-auto\">\n");
      out.write("                    <a class=\"nav-link dropdown-toggle text-white\" href=\"#\" id=\"navbarDropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                          Usuario\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"navbarDropdownMenuLink\">\n");
      out.write("                         ");

    HttpSession sesion = request.getSession();
    String Usuario=sesion.getAttribute("usuario").toString();
    out.println("<a class=\"dropdown-item\" href=\"#\">"+Usuario+"</a>");
    //////////////////////////////////////////////////////////////

      out.write("\n");
      out.write("                       \n");
      out.write("                        <a class=\"dropdown-item\" href=\"#\">Configuracion</a>\n");
      out.write("                        <a class=\"dropdown-item\" href=\"CerrarSesion.jsp\">Cerrar Sesion</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <div class=\"container-fluid\" style=\"padding-left:13px;padding-right:13px;\">\n");
      out.write("        \n");
      out.write("            <!--Barra Navegacion-->\n");
      out.write("            <header>\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <div class=\"contenedor\" id=\"uno\" onclick=\"location.href='InicioSesion.jsp'\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/home.png\" alt=\"HomeLogo\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"contenedor\" id=\"dos\"  onclick=\"location.href='Examen.jsp'\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/examen.png\"  alt=\"ExamenLogo\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"contenedor\" id=\"tres\" onclick=\"location.href='Proyectos.jsp'\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/proyectos.png\" alt=\"ProyectosLogo\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"contenedor\" id=\"cuatro\"   onclick=\"location.href='Actividades.jsp'\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/tareas.png\" alt=\"TareasLogo\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"contenedor\" id=\"cinco\" onclick=\"agrandar5();\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/finanza.png\" alt=\"FinanzasLogo\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"contenedor\" id=\"seis\" onclick=\"agrandar6();\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/ruta.png\" alt=\"RutaLogo\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </header>\n");
      out.write("      <!--Fin Barra de Navegacion-->\n");
      out.write("      <!--Inicio Cartas de Actividades-->\n");
      out.write("      <!---TIuloModulo-->\n");
      out.write("            <div class=\"row\" style=\"padding-top:125px;\">\n");
      out.write("                <div class=\"titulolista col-12 \">\n");
      out.write("                    <h2 align=\"center\">Lista actividades</h2>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("     <!---Fin TituloModulo-->\n");
      out.write("     <!--Ejemplo Cartas-->\n");
      out.write("     \n");
      out.write("      <!--inico Carta Nueva Actividad-->\n");
      out.write("            <div class=\"col-12 cartasdiv \" style=\"margin-bottom:13px;\">\n");
      out.write("                <div class=\"card-columns \">\n");
      out.write("                    <div class=\"card carta\" >\n");
      out.write("                        <h3 class=\"cart-title titulocarta\">Nueva Actividad</h3>\n");
      out.write("                        <div class=\"card-block bloquecarta\">\n");
      out.write("                            <p class=\"card-text\">Nueva Actividad </p>\n");
      out.write("                            <div class=\"btn-group grupo-btn\">\n");
      out.write("                                <button class=\"btn btn-block btn-primary\" id=\"agregar\"  data-toggle=\"modal\" data-target=\"#exampleModal\" >nueva Actividad</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("       <!--Fin Carta Nueva Actividad-->\n");
      out.write("       \n");
      out.write("       <!--Inicio Modal Nueva Actividad-->\n");
      out.write("                    <div class=\"modal fade bd-example-modal-lg\" id=\"exampleModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myLargeModalLabel\" aria-hidden=\"true\">\n");
      out.write("                        <div class=\"modal-dialog modal-lg\">\n");
      out.write("                            <div class=\"modal-content\">\n");
      out.write("                                <div class=\"modal-header\">\n");
      out.write("                                    <h5 class=\"modal-title\" align=\"center\" style=\"text-align:center\" id=\"exampleModalLabel\">Nueva Actividad</h5>\n");
      out.write("                                    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                                        <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                                    </button>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"modal-body actividadformcont\"  >\n");
      out.write("                                    <form  class=\"actividadform\" style=\"width:100%;\" method=\"post\" action=\"IngresoActividad\"  >\n");
      out.write("                                        <div class=\"row targetactividad\"  style=\"width:100%;\">\n");
      out.write("                                            <div class=\"col-6 col-sm-auto\" style=\"width:100%;\">\n");
      out.write("                                                <label  class=\"col-form-label\">Nombre actividad</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-6  col-sm-auto\" style=\"width:100%;\">\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" id=\"recipient-name\" placeholder=\"Nombre Actividad\" name=\"Titulo\">\n");
      out.write("                                            </div>  \n");
      out.write("                                        </div> \n");
      out.write("                                        <div class=\"row targetactividad\" style=\"width:100%;\">\n");
      out.write("                                            <div class=\"col-6 col-sm-auto\" style=\"width:100%;\">\n");
      out.write("                                                <label  class=\"col-form-label\">Forma de Entrega</label>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-6  col-sm-auto\" style=\"width:100%;\">\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" id=\"recipient-name\" placeholder=\"Forma de Entrega\"  name=\"FormaEntrega\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div> \n");
      out.write("                                        <div class=\"row targetactividad\" style=\"width:100%;\" >\n");
      out.write("                                            <div class=\"col-12 targetactividadfecha\">\n");
      out.write("                                                <label  class='col-form-label'>Fecha de Entrega</label>\n");
      out.write("                                                <input type=\"date\"  class=\"col-12\" name=\"FechaEntrega\"> \n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row descripcionproyecto\">\n");
      out.write("                                            <label for=\"message-text\" class=\"form-control-label descripcionproyecto\">Descripcion:</label>\n");
      out.write("                                            <textarea class=\"form-control descripcionproyecto\" id=\"message-text\" name=\"Descripcion\"></textarea>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-5\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-4\">\n");
      out.write("                                                <button class=\"btn btn-primary\">Guardar Actividad</button>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-3\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!--Fin Modal Nueva Actividad-->\n");
      out.write("                     <!--Modal de registro de Actividad-->\n");
      out.write("                     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "modal.jsp", out, false);
      out.write("\n");
      out.write("                    \n");
      out.write("    <!--Fin del Modal de Registro Actividad-->\n");
      out.write("     ");

    Connection con = null;
    Statement sta = null;
    ResultSet r = null;
    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
        sta = con.createStatement();
        r = sta.executeQuery("select * from Actividad inner join usuario on actividad.IDUsuario=usuario.IDUsuario where usuario.NombreUsuario='"+Usuario+"';");
        while(r.next()){
            /*Cartas de Actividades */
            out.println(" <div class=\"card carta\" >");
               out.println("<div class=\"\">");
                  out.println("<h3 class=\"cart-title titulocarta\">"+r.getString("Titulo")+"</h3>"); 
                    out.println("</div>");       
                        out.println(" <div class=\"card-body bloquecarta\">");
                         out.println("<div class=\"container\">");
                           out.println("<div id=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">");
                              out.println("<div class=\"card\">");
                              out.println("<div class='card-header' role='tab' id='"+r.getInt("IDActividad")+r.getString("Titulo")+r.getInt("IDActividad")+"'>");
                                out.println("<div class='card-header' role='tab' id='"+r.getInt("IDActividad")+r.getString("Titulo")+r.getInt("IDActividad")+"'>");
                                out.println("<h5 class='mb-0'>");
                                out.println("<input type='hidden' name='IdentificadorBorrar' id='price' value='"+r.getInt("IDActividad")+"'>");
                                  out.println("<a class='collapsed' data-toggle='collapse' data-parent='#accordion' href='#"+r.getInt("IDActividad")+r.getString("Titulo")+"' aria-expanded='false' aria-controls='"+r.getInt("IDActividad")+"'>");
                                    out.println("Descripcion");
                                  out.println(" </a>");      
                                 out.println("</h5>");                  
                                out.println("</div>");              
                                out.println("<div id='"+r.getInt("IDActividad")+r.getString("Titulo")+"' class='collapse' role='tabpanel' aria-labelledby='"+r.getString("Titulo")+r.getInt("IDActividad")+"'>");    
                                out.println("<div class='card-block'>");   
                                 out.println(r.getString("Descripcion"));
                               out.println("</div>");      
                              out.println("</div>");              
                             out.println("</div>");               
                            out.println("</div>");             
                        out.println("</div>");
                      out.println(" <div class='btn-group grupo-btn'>");
                         out.println(" <button class='btn btn-primary' id='checar'>Final</button>");
                         out.println("<button class='btn btn-primary' id='editar' data-toggle='modal' data-target='#"+r.getInt("IDActividad")+"'>Editar</button>");     
                         out.println("<button class='btn btn-primary' id='borrar' data-toggle='modal' data-target='#"+r.getInt("IDActividad")+"Borrar'>Borrar</button>");     
                         out.println("</div>");
                      out.println("</div>");  
                    out.println("</div>");    
                    out.println("</div>");
                   
                    /*Final de Actividades ya hechas*/
                   
                    //Modal de Actividades ya hechas/*
                  out.println("<div class='modal fade bd-example-modal-lg'  id='"+r.getInt("IDActividad")+"' tabindex='-1' role='dialog' aria-labelledby='myLargeModalLabel' aria-hidden='true'>");
                     out.println("<div class='modal-dialog modal-lg'>");
                        out.println("<div class='modal-content'>");
                           out.println("<div class='modal-header'>");
                              out.println("<h5 class='modal-title' align='center' style='text-align:center'  id='"+r.getInt("IDActividad")+"'>"+r.getString("Titulo")+"</h5>");
                                  out.println("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                                     out.println("<span aria-hidden='true'>&times;</span>");
                                    out.println("</button>");
                          out.println("</div>");
                         out.println("<div class='modal-body actividadformcont'>");
                         out.println("<form  class='actividadform' style='width:100%;' method='post' action='CambioActividad' >");
                          out.println("<div class='row targetactividad'  style='width:100%;'>");;
                                  out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                      out.println("<label  class='col-form-label' name='Identificador' value='"+r.getInt("IDActividad")+"'>Nombre actividad</label>");
                                       out.println(" <input type='hidden' name='Identificador' id='price' value='"+r.getInt("IDActividad")+"'>");
                                      out.println("</div>");
                                     out.println("<div class='col-6  col-sm-auto' style='width:100%;'>");
                                       out.println("<input type='text' class='form-control' id='recipient-name' placeholder='Nombre Actividad' name='Titulo' value='"+r.getString("Titulo")+"'>");
                                    out.println("</div>");  
                                    out.println(" </div>");
                                    out.println("<div class='row targetactividad' style='width:100%;'>");
                                       out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                          out.println("<label  class='col-form-label'>Forma de Entrega</label>");
                                     out.println("</div>");
                                    out.println("<div class='col-6  col-sm-auto' style='width:100%;'>");
                                    out.println("<input type='text' class='form-control' id='recipient-name' placeholder='Forma de Entrega'  name='FormaEntrega' value='"+r.getString("FormaDeEntregar")+"'>");
                                        out.println(" </div>");   
                                     out.println("</div>"); 
                                     
                                     
                                out.println("<div class='row targetactividad' style='width:100%;' >");
                                    out.println("<div class='col-12 targetactividadfecha'>");
                                 out.println("<label  class='col-form-label'>Fecha de Entrega</label>");
                                 out.println("<input type='date'  class='col-12' name='FechaEntrega' value='"+r.getString("FechaLimite")+"'> ");
                                out.println("</div>");
                                 out.println("</div>");       
                                 
                                 
                       out.println("<div class='row descripcionproyecto'>");
                             out.println("<label for='message-text' class='form-control-label descripcionproyecto'>Descripcion:</label>");
                                out.println("<textarea class='form-control descripcionproyecto' id='message-text' name='Descripcion'>"+r.getString("Descripcion")+"</textarea>");
                                   out.println("</div>");
                                     out.println("<div class='row'>");
                                      out.println("<div class='col-5'>");
                                         out.println("</div>");
                                           out.println("<div class='col-4'>");
                                              out.println("<button class='btn btn-primary'>Guardar Cambios</button>");
                                         out.println("</div>");
                                       out.println("<div class='col-3'>");
                                  out.println("</div>");
                              out.println("</div>");
                            out.println("</form>");
                      out.println("</div>");
                     out.println("</div>");
                 out.println(" </div>");
              out.println(" </div>");
                    /*Modal Actividades ya hechas*/
                    
                    //Modal ELimiana Actividad /*
        out.println("<div class='modal fade bd-example-modal-lg'  id='"+r.getInt("IDActividad")+"Borrar' tabindex='-1' role='dialog' aria-labelledby='myLargeModalLabel' aria-hidden='true'>");
                     out.println("<div class='modal-dialog modal-lg'>");
                        out.println("<div class='modal-content'>");
                           out.println("<div class='modal-header'>");
                              out.println("<h5 class='modal-title' align='center' style='text-align:center'>Seguro que quieres borrar la Actividad:"+r.getString("Titulo")+"</h5>");
                                  out.println("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                                     out.println("<span aria-hidden='true'>&times;</span>");
                                    out.println("</button>");
                          out.println("</div>");
                         out.println("<div class='modal-body actividadformcont'>");
                         out.println("<form  class='actividadform' style='width:100%;' method='post' action='ELiminarActividad' >");
                          out.println("<div class='row targetactividad'  style='width:100%;'>");;
                                  out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                      out.println("<label  class='col-form-label'>La Actividad:"+r.getString("Titulo")+" se borra permenentemente del sistema</label>");
                                       out.println(" <input type='hidden' name='IdentificadorBorrar' id='price' value='"+r.getInt("IDActividad")+"'>");
                                      out.println("</div>");
                                 out.println("<div class='row ' style='width:100%;padding-left:39%;padding-right:39%;'>");
                                          out.println("<button type='button' style='margin-right:3px;margin-bottom:3px;' class='btn btn-primary' data-dismiss='modal' aria-label='Close'>Cancelar</button>");
                                          out.println("<button type='sumbit' style='margin-left:3px;' class='btn btn-primary '>Aceptar</button>");
                                  out.println("</div>");
                              out.println("</div>");
                            out.println("</form>");
                      out.println("</div>");
                     out.println("</div>");
                 out.println(" </div>");
              out.println(" </div>");
    

                    // Fin Modal ELimiana Actividad /*
        }
    } catch (SQLException error) {
        out.print(error.toString());
    }
    //////////////////////////////////////////////////////////////

      out.write("\n");
      out.write("    \n");
      out.write("            </div>\n");
      out.write("        </div> \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
