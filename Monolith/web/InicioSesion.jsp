<%-- 
    Document   : InicioSesion
    Created on : 23/10/2017, 11:34:35 AM
    Author     : Alumno
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <body>
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
                    //String nombre = r.getString("NombreUsuario");
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
                }
            } catch (SQLException error) {
                out.print(error.toString());
            }


        %>
    </body>
</html>
