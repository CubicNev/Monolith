package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class MenuG_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Menu General</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"Css/test1.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/bootstraplogin.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Mukta\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/Menu.css\">\n");
      out.write("    </head>\n");
      out.write("    <body class=\"container-fluid\">\n");
      out.write("        <div class=\"barraInicio navbar navbar-default \" style=\"font-family:Mukta\">Monolith<img  class=\"logo\" src=\"img/logo.png\" alt=\"\"></div>\n");
      out.write("        <header>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"uno\">\n");
      out.write("                <img class=\"icon\" src=\"img/home.png\" alt=\"HomeLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"dos\">\n");
      out.write("                <img class=\"icon\" src=\"img/examen.png\" alt=\"ExamenLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"tres\">\n");
      out.write("                <img class=\"icon\" src=\"img/proyectos.png\" alt=\"ProyectosLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"cuatro\">\n");
      out.write("                <img class=\"icon\" src=\"img/tareas.png\" alt=\"TareasLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"cinco\">\n");
      out.write("                <img class=\"icon\" src=\"img/finanza.png\" alt=\"FinanzasLogo\">\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"contenedor\" id=\"seis\">\n");
      out.write("                <img class=\"icon\" src=\"img/ruta.png\" alt=\"RutaLogo\">\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"encubador\">\n");
      out.write("            <div class=\"primero\">\n");
      out.write("                <div  id=\"Reloj\" class=\"clock\" >\n");
      out.write("                    <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("                        function Mostrar() {\n");
      out.write("                            var date = new Date();\n");
      out.write("                            var h = date.getHours(); // 0 - 23\n");
      out.write("                            var m = date.getMinutes(); // 0 - 59\n");
      out.write("                            var s = date.getSeconds(); // 0 - 59\n");
      out.write("                            h = (h < 10) ? \"0\" + h : h;\n");
      out.write("                            m = (m < 10) ? \"0\" + m : m;\n");
      out.write("                            s = (s < 10) ? \"0\" + s : s;\n");
      out.write("\n");
      out.write("                            var time = h + \":\" + m + \":\" + s + \" \";\n");
      out.write("                            document.getElementById(\"Reloj\").innerText = time;\n");
      out.write("                            document.getElementById(\"Reloj\").textContent = time;\n");
      out.write("\n");
      out.write("                            setTimeout(Mostrar, 1000);\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        Mostrar();\n");
      out.write("\n");
      out.write("                    </script>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"segundo\">\n");
      out.write("                <iframe scrolling=\"auto\" src=\"calendario.html\" frameborder=\"0\" height=\"300\" width=\"300\">\n");
      out.write("\n");
      out.write("                </iframe>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"tercero\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"cuarto\">\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
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
