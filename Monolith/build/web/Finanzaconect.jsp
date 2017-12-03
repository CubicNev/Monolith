<%-- 
    Document   : Finanzaconect
    Created on : 7/11/2017, 08:04:22 AM
    Author     : Alumno
--%>
<%@page import="java.sql.*, java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String titulo;
            titulo = request.getParameter("titulo");

            Connection c = null;
            Statement sta = null;
            ResultSet r = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
                sta.executeUpdate("insert into Finanzas values ('" + titulo + "','" + 0 + "','" + 0 + "','" + 0 + "');");
                out.print("<script> alert('Te has registrado exitosamente'); </script>");
                out.print("<script> window.location='index.html'; </script>");
            } catch (SQLException error) {
                out.print(error.toString());
            }
        %>
    </body>
</html>
