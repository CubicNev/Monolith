<%-- 
    Document   : FinanzaIngreso
    Created on : 12/11/2017, 02:55:06 PM
    Author     : memo0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String razon = request.getParameter("ingrerazo");
            String aux = request.getParameter("ingrecanti");
            int monto= Integer.parseInt(aux);
            Connection c = null;
            Statement sta = null;
            ResultSet r = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
                sta.executeUpdate("insert into RegistroFinanza(IDCategoriaCuenta,Fecha,Monto,Accion) values ('" + 1 + "',now(),'" + monto + "','" + razon + "');");
                out.print("<script> alert('se ha añadido exitosamente'); </script>");
                out.print("<script> window.location='Finanzas.jsp'; </script>");
            } catch (SQLException error) {
                out.print(error.toString());
            }

        %>
    </body>
</html>
