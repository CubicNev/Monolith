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
            int num=0;
            int aux=0;
            Connection c = null;
            Statement sta = null;
            ResultSet r = null;
            HttpSession sesion = request.getSession();
            aux=Integer.parseInt(sesion.getAttribute("idusario").toString());
            int monto=0;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
                r=sta.executeQuery("select IDCuenta from Cuenta where IDusuario='"+aux+"'");
                while(r.next()){
                    num=r.getInt("IDCuenta");
                }
                sta.executeUpdate("insert into CategoriaCuenta(NombreCategoria,Monto,IDCuenta) values ('"+titulo+"','" + monto + "','" + num + "');");
                out.print("<script> alert('se ha añadido exitosamente'); </script>");
                out.print("<script> window.location='Finanzas.jsp'; </script>");
            } catch (SQLException error) {
                out.print(error.toString());
            }
        %>
    </body>
</html>
