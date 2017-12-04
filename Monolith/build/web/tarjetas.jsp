<%-- 
    Document   : tarjetas
    Created on : 7/11/2017, 12:34:42 PM
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
            int total;
            int retiro;
            int ingreso;
            Connection c = null;
            Statement sta = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
                rs=sta.executeQuery("select * from Finanzas");
                while(rs.next()){
                    titulo=rs.getString("IDCategoria");
                    total=rs.getInt("Montototal");
                    retiro=rs.getInt("Retiro");
                    ingreso=rs.getInt("Ingreso");
                    
                }
                
                
            } catch (SQLException error) {
                out.print(error.toString());
            }
        %>
        %>
    </body>
</html>
