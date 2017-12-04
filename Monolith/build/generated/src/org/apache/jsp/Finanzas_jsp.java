package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Funcionfianan.conectar;
import java.sql.*;
import java.io.*;

public final class Finanzas_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Actividades</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"Css/actividadstyle.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/Menu.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/finanzashtml.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/test1.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"Css/bootstraplogin.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Mukta\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"Css/Menu.css\">\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src='js/jquery-3.2.1.js'></script>\n");
      out.write("        <script src='js/bootstrap.min.js'></script>\n");
      out.write("        <script src='js/menu.js'></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            HttpSession sesion = request.getSession();
            String usuario = sesion.getAttribute("usuario").toString();
            Connection c = null;
            Statement sta = null;
            ResultSet r = null;
            int num = 0;
            int monto = 0;
            if (sesion.getAttribute("usuario") == null) {
                out.println("<script>location.replace('index.jsp');</script>");
            } else {
                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                    sta = c.createStatement();
                    r = sta.executeQuery("select IDUsuario from Usuario where NombreUsuario='" + usuario + "';");
                    while (r.next()) {
                        num = r.getInt("IDUsuario");
                        sesion.setAttribute("idusario", num);

                    }
                    r = sta.executeQuery("select * from Cuenta where IDusuario='" + num + "'");
                    while (!(r.next())) {
                        out.print("<script> window.location='Index.jsp'; </script>");
                    }

                } catch (SQLException error) {
                    out.print(error.toString());
                }
            }
        
      out.write("\n");
      out.write("        <div class=\"container-fluid\" style=\"padding-left:13px;padding-right:13px;\">\n");
      out.write("            <div class=\"barraInicio navbar navbar-default \" style=\"font-family:Mukta\">Monolith<img  class=\"logo\" src=\"img/logo.png\" alt=\"\"></div>\n");
      out.write("            <header>\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <div class=\"contenedor\" id=\"uno\" onclick=\"agrandar();\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/home.png\" alt=\"HomeLogo\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"contenedor\" id=\"dos\" onclick=\"agrandar2();\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/examen.png\" alt=\"ExamenLogo\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"contenedor\" id=\"tres\" onclick=\"agrandar3();\" ondblclick=\"minimizar();\">\n");
      out.write("                        <img class=\"icon\" src=\"img/proyectos.png\" alt=\"ProyectosLogo\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"contenedor\" id=\"cuatro\" onclick=\"agrandar4();\" ondblclick=\"minimizar();\">\n");
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
      out.write("            </header> \n");
      out.write("            <div class=\"row categorias\" >\n");
      out.write("                <div class=\"col-7\">\n");
      out.write("                    <div class=\"row barrafinanza\">\n");
      out.write("                        <div class=\"col-4 \">\n");
      out.write("                            <h2 align=\"left\" class=\"titubarrafinianza\"> Lista Finanzas</h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-8\">\n");
      out.write("\n");
      out.write("                            <form class=\"form\" action=\"Finanzaconect.jsp\" method=\"post\">\n");
      out.write("                                <div class=\"row formcategorias\">\n");
      out.write("                                    <div class=\"col-7\">\n");
      out.write("                                        <input class=\"form-control\" id=\"titulo\" name=\"titulo\" placeholder=\"Nueva Categoria\" required=\"\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col-5\">\n");
      out.write("                                        <button class=\"btn btn-primary\" type=\"submit\">Agregar</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row listafinanza\">\n");
      out.write("                        <div class=\"card-panel\">\n");
      out.write("                            <div class=\"card cartafinanza\" >\n");
      out.write("                                <div class=\"card-body\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-8\">\n");
      out.write("                                            <h4 class=\"card-title\">Titulo Categoria Financiera</h4>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-8\">\n");
      out.write("                                            Monto Total\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-12\">\n");
      out.write("                                            <form class=\"form-inline formnuvcategoria\" action=\"FinanzaIngreso.jsp\" method=\"post\">\n");
      out.write("                                                <label>Ingreso</label>\n");
      out.write("                                                <input id=\"ingrecanti\" name=\"ingrecanti\" type=\"number\" class=\"form-control \"  placeholder=\"Monto Ingreso\" required=\"\">\n");
      out.write("                                                <input id=\"ingrerazo\" name=\"ingrerazo\" type=\"text\" class=\"form-control \"  placeholder=\"Razon de ingreso\" required=\"\">\n");
      out.write("                                                <button class=\"btn btn-primary \" type=\"submit\" name=\"tipo\" id=\"tipo\">Ingresar</button>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-12\">\n");
      out.write("                                            <form class=\"form-inline formnuvcategoria\" action=\"FinanzaIngreso.jsp\" method=\"post\">\n");
      out.write("                                                <label>Retiro</label>\n");
      out.write("                                                <input id=\"retirecanti\" name=\"retirecanti\" type=\"number\" class=\"form-control \"  placeholder=\"Monto Retiro\" required=\"\">\n");
      out.write("                                                <input id=\"retrerazon\" name=\"retrerazon\" type=\"text\" class=\"form-control \"  placeholder=\"Razon de retiro\" required=\"\">\n");
      out.write("                                                <button class=\"btn btn-primary \" type=\"submit\" id=\"tipo\" name=\"tipo\">Retirar</button>\n");
      out.write("                                            </form>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div> \n");
      out.write("                            ");

                                Connection con = null;
                                //Statement sta = null;
                                //ResultSet r = null;
                                int IDCategoriaCuenta;
                                String NombreCategoria;
                                double Monto;
                                int IDCuenta = 0;
                                int numero = 0;
                                //HttpSession sesion = request.getSession();
                                //String usuario=sesion.getAttribute("usuario").toString();
                                try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                                    sta = con.createStatement();
                                    r = sta.executeQuery("select IDCuenta from Cuenta where IDusuario='" + num + "'");
                                    while (r.next()) {
                                        IDCuenta = r.getInt("IDCuenta");
                                    }
                                    r = sta.executeQuery("select * from CategoriaCuenta where IDCuenta ='" + IDCuenta + "'");
                                    while (r.next()) {
                                        //numero++;
                                        IDCategoriaCuenta = r.getInt("IDCategoriaCuenta");
                                        NombreCategoria = r.getString("NombreCategoria");
                                        Monto = r.getDouble("Monto");
                                        IDCuenta = r.getInt("IDCuenta");
                                        //out.println("<div class='card-panel'>");
                                        out.println("<div class='card cartafinanza'>");
                                        out.println("<div class='card-body'>");
                                        out.println("<div class='row'>");
                                        out.println("<div class='col-8'>");
                                        out.println("<h4 class='card-title'>" + NombreCategoria + "</h4>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("<div class='row'>");
                                        out.println("<div class='col-8'>");
                                        out.println("Monto total: " + Monto + "");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("<div class='row'>");
                                        out.println("<div class='col-12'>");
                                        out.println("<form class='form-inline formnuvcategoria'>");
                                        out.println("<label>Ingreso</label>");
                                        out.println("<input id='ingrecanti' name='ingrecanti' type='number' class='form-control'  placeholder='Monto Ingreso' required=''>");
                                        out.println("<input id='ingrerazo' name='ingrerazo' type='text' class='form-control'  placeholder='Razon de ingreso' required=''>");
                                        out.println("<button class='btn btn-primary' type='submit'  name='tipo' id='tipo'>Ingresar</button>");
                                        out.println("</form>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("<div class='row'>");
                                        out.println("<div class='col-12'>");
                                        out.println("<form class='form-inline formnuvcategoria'>");
                                        out.println("<label>Retiro</label>");
                                        out.println("<input id='retirecanti' name='retirecanti' type='number' class='form-control'  placeholder='Monto Retiro' required=''>");
                                        out.println("<input id='retrerazon' name='retrerazon' type='text' class='form-control'  placeholder='Razon de retiro' required=''>");
                                        out.println("<button class='btn btn-primary' type='submit' id='tipo' name='tipo'>Retirar</button>");
                                        out.println("</form>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("</div>");
                                    }
                                    r.close();
                                } catch (SQLException error) {
                                    out.print(error.toString());
                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-5\">\n");
      out.write("                    <div class=\"row barragrafica\">\n");
      out.write("                        <div class=\"col-auto \">\n");
      out.write("                            <h2 align=\"left\" class=\"titubarrafinianza\">Grafico</h2>\n");
      out.write("                            <br>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
