package FunciónMonolith;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Ingreso", urlPatterns = {"/Ingreso"})
public class Ingreso extends HttpServlet {
    private String Nombre;
    private String Correo;
    private String Password;
    private int Edad;
    private String Pais;
    private String Direccion;
    private String Institucion;
    private String NivelEstudios;
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Ingreso</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Ingreso at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        Usuario u = new Usuario();
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
        
        Nombre = request.getParameter("nombre");
        Institucion = request.getParameter("direccion");
        NivelEstudios = request.getParameter("estudios");
        Edad = Integer.parseInt(request.getParameter("edad"));
        Pais = request.getParameter("pais");
        Direccion = request.getParameter("direccion");
        Correo = request.getParameter("correo");
        Password = request.getParameter("contra");
        
        u.setNombre(Nombre);
        u.setInstitucion(Institucion);
        u.setNivelEstudios(NivelEstudios);
        u.setEdad(Edad);
        u.setPais(Pais);
        u.setDireccion(Direccion);
        u.setCorreo(Correo);
        u.setPassword(Password);
        
        
        
        try {
            db.IngresarUsuario(u);
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Ingreso</title>");
          out.println("<link href=\"Css/test1.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
"        <link href=\"Css/bootstraplogin.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
"        <link href=\"https://fonts.googleapis.com/css?family=Mukta\" rel=\"stylesheet\">\n" +
"        <link rel=\"stylesheet\" href=\"Css/Menu.css\">");
          out.println("<script type=\"text/javascript\">\n" +
"            \n" +
"\n" +
"            // funcion para aumentar la fuente\n" +
"            function agrandar() {\n" +
"                var tamaño =  document.getElementById(\"uno\"); \n" +
"                var tamaño2 = document.getElementById(\"dos\");\n" +
"                var tamaño3 = document.getElementById(\"tres\");\n" +
"                var tamaño4 = document.getElementById(\"cuatro\");\n" +
"                var tamaño5 = document.getElementById(\"cinco\");\n" +
"                var tamaño6 = document.getElementById(\"seis\");\n" +
"                tamaño.style.height =  130 + \"%\";\n" +
"                tamaño2.style.height = 100 + \"%\";\n" +
"                tamaño3.style.height = 100 + \"%\";\n" +
"                tamaño4.style.height = 100 + \"%\";\n" +
"                tamaño5.style.height = 100 + \"%\";\n" +
"                tamaño6.style.height = 100 + \"%\";\n" +
"            }\n" +
"            function agrandar2() {\n" +
"                 var tamaño = document.getElementById(\"uno\");\n" +
"                var tamaño2 = document.getElementById(\"dos\");\n" +
"                var tamaño3 = document.getElementById(\"tres\");\n" +
"                var tamaño4 = document.getElementById(\"cuatro\");\n" +
"                var tamaño5 = document.getElementById(\"cinco\");\n" +
"                var tamaño6 = document.getElementById(\"seis\");\n" +
"                tamaño.style.height =  100 + \"%\";\n" +
"                tamaño2.style.height = 130 + \"%\";\n" +
"                tamaño3.style.height = 100 + \"%\";\n" +
"                tamaño4.style.height = 100 + \"%\";\n" +
"                tamaño5.style.height = 100 + \"%\";\n" +
"                tamaño6.style.height = 100 + \"%\";\n" +
"\n" +
"            }\n" +
"            function agrandar3() {\n" +
"                var tamaño = document.getElementById(\"uno\");\n" +
"                var tamaño2 = document.getElementById(\"dos\");\n" +
"                var tamaño3 = document.getElementById(\"tres\");\n" +
"                var tamaño4 = document.getElementById(\"cuatro\");\n" +
"                var tamaño5 = document.getElementById(\"cinco\");\n" +
"                var tamaño6 = document.getElementById(\"seis\");\n" +
"                tamaño.style.height =  100 + \"%\";\n" +
"                tamaño2.style.height = 100 + \"%\";\n" +
"                tamaño3.style.height = 130 + \"%\";\n" +
"                tamaño4.style.height = 100 + \"%\";\n" +
"                tamaño5.style.height = 100 + \"%\";\n" +
"                tamaño6.style.height = 100 + \"%\";\n" +
"\n" +
"            }\n" +
"            function agrandar4() {\n" +
"                 var tamaño = document.getElementById(\"uno\");\n" +
"                var tamaño2 = document.getElementById(\"dos\");\n" +
"                var tamaño3 = document.getElementById(\"tres\");\n" +
"                var tamaño4 = document.getElementById(\"cuatro\");\n" +
"                var tamaño5 = document.getElementById(\"cinco\");\n" +
"                var tamaño6 = document.getElementById(\"seis\");\n" +
"                tamaño.style.height =  100 + \"%\";\n" +
"                tamaño2.style.height = 100 + \"%\";\n" +
"                tamaño3.style.height = 100 + \"%\";\n" +
"                tamaño4.style.height = 130 + \"%\";\n" +
"                tamaño5.style.height = 100 + \"%\";\n" +
"                tamaño6.style.height = 100 + \"%\";\n" +
"\n" +
"            }\n" +
"            function agrandar5() {\n" +
"                var tamaño = document.getElementById(\"uno\");\n" +
"                var tamaño2 = document.getElementById(\"dos\");\n" +
"                var tamaño3 = document.getElementById(\"tres\");\n" +
"                var tamaño4 = document.getElementById(\"cuatro\");\n" +
"                var tamaño5 = document.getElementById(\"cinco\");\n" +
"                var tamaño6 = document.getElementById(\"seis\");\n" +
"                tamaño.style.height =  100 + \"%\";\n" +
"                tamaño2.style.height = 100 + \"%\";\n" +
"                tamaño3.style.height = 100 + \"%\";\n" +
"                tamaño4.style.height = 100 + \"%\";\n" +
"                tamaño5.style.height = 130 + \"%\";\n" +
"                tamaño6.style.height = 100 + \"%\";\n" +
"\n" +
"            }\n" +
"            function agrandar6() {\n" +
"                var tamaño = document.getElementById(\"uno\");\n" +
"                var tamaño2 = document.getElementById(\"dos\");\n" +
"                var tamaño3 = document.getElementById(\"tres\");\n" +
"                var tamaño4 = document.getElementById(\"cuatro\");\n" +
"                var tamaño5 = document.getElementById(\"cinco\");\n" +
"                var tamaño6 = document.getElementById(\"seis\");\n" +
"                tamaño.style.height =  100 + \"%\";\n" +
"                tamaño2.style.height = 100 + \"%\";\n" +
"                tamaño3.style.height = 100 + \"%\";\n" +
"                tamaño4.style.height = 100 + \"%\";\n" +
"                tamaño5.style.height = 100 + \"%\";\n" +
"                tamaño6.style.height = 130 + \"%\";\n" +
"\n" +
"            }\n" +
"\n" +
"           \n" +
"        </script>");

            
            out.println("</head>");
            out.println("<body>");
            out.println(" <div class=\"barraInicio navbar navbar-default \" style=\"font-family:Mukta\">Monolith<img  class=\"logo\" src=\"img/logo.png\" alt=\"\"></div>\n" +
"        <header>\n" +
"\n" +
"            <div class=\"contenedor\" id=\"uno\" onclick=\"agrandar();\" ondblclick=\"minimizar();\">\n" +
"                <img class=\"icon\" src=\"img/home.png\" alt=\"HomeLogo\">\n" +
"            </div>\n" +
"\n" +
"            <div class=\"contenedor\" id=\"dos\" onclick=\"agrandar2();\" ondblclick=\"minimizar();\">\n" +
"                <img class=\"icon\" src=\"img/examen.png\" alt=\"ExamenLogo\">\n" +
"            </div>\n" +
"\n" +
"            <div class=\"contenedor\" id=\"tres\" onclick=\"agrandar3();\" ondblclick=\"minimizar();\">\n" +
"                <img class=\"icon\" src=\"img/proyectos.png\" alt=\"ProyectosLogo\">\n" +
"            </div>\n" +
"\n" +
"            <div class=\"contenedor\" id=\"cuatro\" onclick=\"agrandar4();\" ondblclick=\"minimizar();\">\n" +
"                <img class=\"icon\" src=\"img/tareas.png\" alt=\"TareasLogo\">\n" +
"            </div>\n" +
"\n" +
"            <div class=\"contenedor\" id=\"cinco\" onclick=\"agrandar5();\" ondblclick=\"minimizar();\">\n" +
"                <img class=\"icon\" src=\"img/finanza.png\" alt=\"FinanzasLogo\">\n" +
"            </div>\n" +
"\n" +
"            <div class=\"contenedor\" id=\"seis\" onclick=\"agrandar6();\" ondblclick=\"minimizar();\">\n" +
"                <img class=\"icon\" src=\"img/ruta.png\" alt=\"RutaLogo\">\n" +
"            </div>\n" +
"\n" +
"        </header>");
            out.println("<div class='container' style='padding-top:200px;'>");
            out.println("<div class='row' >");
            out.println("<div class='col-12' >");
            out.println("<h1 align='center'>Datos</h1>");
            out.println("/<div>");
            out.println("/<div>");
            out.println("<div class='row' >");
            out.println("<div class='col-12' >");
            out.println("<h1 align='center'>Nombre Usuario :"+u.getNombre()+"</h1>");
            out.println("/<div>");
            out.println("/<div>");
            out.println("<div class='row' >");
            out.println("<div class='col-12' >");
            out.println("<h1 align='center'>Nivel de Estudios :"+u.getNivelEstudios()+"</h1>");
            out.println("/<div>");
            out.println("/<div>");
            out.println("<div class='row' >");
            out.println("<div class='col-12' >");
            out.println("<h1 align='center'>Direccion:"+u.getDireccion()+"</h1>");
            out.println("/<div>");
            out.println("/<div>");
            out.println("<div class='row' >");
            out.println("<div class='col-12' >");
            out.println("<h1 align='center'>Pais :"+u.getPais()+"</h1>");
            out.println("/<div>");
            out.println("/<div>");
            out.println("<div class='row' >");
            out.println("<div class='col-12' >");
            out.println("<h1 align='center'>Correo :"+u.getCorreo()+"</h1>");
            out.println("/<div>");
            out.println("/<div>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
            
        } catch (SQLException ex) {
                        out.print(ex.toString());
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
