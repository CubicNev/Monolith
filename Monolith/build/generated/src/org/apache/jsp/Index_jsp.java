package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

            out.write("\n");
            out.write("\n");
            out.write("\n");
            out.write("<!DOCTYPE html>\n");
            out.write("<html>\n");
            out.write("    <head>\n");
            out.write("        <title>PruebaLogin</title>                          \n");
            out.write("        <meta charset=\"UTF-8\">                                              \n");
            out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
            out.write("        <link href=\"Css/test1.css\" rel=\"stylesheet\" type=\"text/css\">\n");
            out.write("        <link href=\"Css/bootstraplogin.css\" rel=\"stylesheet\" type=\"text/css\">\n");
            out.write("        <link href=\"https://fonts.googleapis.com/css?family=Mukta\" rel=\"stylesheet\">\n");
            out.write("\n");
            out.write("    </head>\n");
            out.write("    <body class=\"container-fluid\">\n");
            out.write("        ");

            HttpSession sesion = request.getSession();

            if (sesion.getAttribute("id") == null) { // debería de poner .equals pero me lo acepta con doble igual

                out.write("\n");
                out.write("        <div class=\"barraInicio navbar navbar-default \" style=\"font-family:Mukta\">Monolith<img  class=\"logo\" src=\"img/logo.png\"></div>\n");
                out.write("        <!--Primera parte con la imagen de edificios y danlo la bienvenida al sistema  -->\n");
                out.write("        <div class=\"pimg1\">\n");
                out.write("            <div class=\"ptext\">\n");
                out.write("                <span class=\"border\">\n");
                out.write("                    <!--Mensaje de Bienvenida  -->\n");
                out.write("                    Bienvenido a Monolith\n");
                out.write("                </span>\n");
                out.write("            </div>\n");
                out.write("        </div>\n");
                out.write("        ");

            } else {

                out.write("\n");
                out.write("        <div class=\"barraInicio navbar navbar-default \" style=\"font-family:Mukta\">Monolith<img  class=\"logo\" src=\"img/logo.png\"></div>\n");
                out.write("        <!--Primera parte con la imagen de edificios y danlo la bienvenida al sistema  -->\n");
                out.write("        <div class=\"pimg1\">\n");
                out.write("            <div class=\"ptext\">\n");
                out.write("                <span class=\"border\">\n");
                out.write("                    <!--Mensaje de Bienvenida  -->\n");
                out.write("                    Bienvenido a Monolith: ");
                out.println(sesion.getAttribute("usuario"));
                out.write("\n");
                out.write("                </span>\n");
                out.write("            </div>\n");
                out.write("        </div>\n");
                out.write("        <!--Fin de seccion con imagenees del edificio  -->\n");
                out.write("        <!--Seccion explicando el sistema al usuario  -->\n");
                out.write("        <section class=\"section section-light\">\n");
                out.write("            <!--Pregunta introductoria  -->\n");
                out.write("            <h2>¿Qué es Monolith?</h2>\n");
                out.write("            <!--Explicación  del sistema -->\n");
                out.write("            <p>\n");
                out.write("                Monolith una herramienta \n");
                out.write("                para la organización no solo de tus tareas,\n");
                out.write("                proyectos, finanzas y tiempo si no también \n");
                out.write("                para maximizar tu aprovechamiento.\n");
                out.write("            </p>\n");
                out.write("        </section>\n");
                out.write("        <!--Fin de seccion explicativa del sistema  -->\n");
                out.write("        <!--Imagen con registro  -->\n");
                out.write("        <div class=\"pimg2\">\n");
                out.write("            <div class=\"login\">\n");
                out.write("                <span>\n");
                out.write("                    <div class=\"loginBox\">\n");
                out.write("                        <form method=\"post\" action=\"InicioSesion.jsp\">\n");
                out.write("                            <img src=\"img/user.png\" class=\"user\">\n");
                out.write("                            <h2>Ingresa Aqui</h2>\n");
                out.write("                            <p>Nombre Usuario</p>\n");
                out.write("                            <input type=\"text\" name=\"usuario\" placeholder=\"Nombre de Usuario\" required>\n");
                out.write("                            <p>Contraseña</p>\n");
                out.write("                            <input type=\"password\" name=\"contrasenia\" placeholder=\"Contraseña\" required>\n");
                out.write("                            <input type=\"submit\" name=\"ingresar\" value=\"Ingresar\">\n");
                out.write("                        </form>\n");
                out.write("                        <a id=\"forgotpass\" href=\"https://www.w3schools.com/html/html_links.asp\">¿Olvidaste tu contraseña?</a>\n");
                out.write("                        <h2 id=\"nocuenta\">¿No tienes cuenta?</h2>\n");
                out.write("                        <form>\n");
                out.write("                            <input type=\"submit\" id=\"registro\" name=\"s\" value=\"Registrarse\">\n");
                out.write("                        </form>\n");
                out.write("                    </div>\n");
                out.write("                </span>\n");
                out.write("            </div>\n");
                out.write("        </div>\n");
                out.write("        <section class=\"section section-dark\">\n");
                out.write("            <!--Pregunta introductoria  -->\n");
                out.write("            <h2>Desarrollado por:</h2>\n");
                out.write("            <!--Explicación  del sistema -->\n");
                out.write("            <div class=\"row cola\">\n");
                out.write("                <div class=\"col-3\"><img  src=\"img/bishop.png\"></div>\n");
                out.write("                <div class=\"col-3\">Ricardo Alberto Machorro Vences</div>\n");
                out.write("                <div class=\"col-3\"><img src=\"img/strategy.png\"></div>\n");
                out.write("                <div class=\"col-3\">J. Carlos Nevárez</div>\n");
                out.write("            </div>\n");
                out.write("            <div class=\"row cola\">\n");
                out.write("                <div class=\"col-3\"><img  src=\"img/tower.png\"></div>\n");
                out.write("                <div class=\"col-3\">Raúl Daniel Rojas Santiago</div>\n");
                out.write("                <div class=\"col-3\"><img   src=\"img/bold.png\"></div>\n");
                out.write("                <div class=\"col-3\">Guillermo Ramírez Olvera</div>\n");
                out.write("            </div>\n");
                out.write("            <div class=\"row cola\">\n");
                out.write("                <div class=\"col-7\"><img  src=\"img/queen.png\"></div>\n");
                out.write("                <div class=\"col-2\">Alejandro Enríquez Rivera</div>\n");
                out.write("            </div>\n");
                out.write("        </section>\n");
                out.write("    </body>\n");
                out.write("</html>\n");
                out.write("\n");
            }}catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    }finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
        }
    }
