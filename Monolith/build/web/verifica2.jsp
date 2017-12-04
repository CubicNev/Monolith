<%-- 
    Document   : verifica2
    Created on : 2/12/2017, 05:06:44 PM
    Author     : memo0
--%>
<%@page import="cifi.cifichido" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*,java.io.*" %>
        <%
            String usuario=request.getParameter("nombre");
            String texto=request.getParameter("Texto");
            String adendum="";
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
            try {
                r = sta.executeQuery("select * from Usuario where NombreUsuario='" + usuario + "';");
                if (r.next()) {
                    cifichido memo1=new cifichido();
                    adendum=memo1.memito(texto,usuario);
                    out.println("<script>alert('Su adendum es "+adendum+"')</script>");
                    con.close();
                    out.println("<meta http-equiv='Refresh' CONTENT='.0000001;url=verifica.jsp'>");
                } else {
                    out.println("<script>alert('Este usuario no existe')</script>");
                    con.close();
                    out.println("<meta http-equiv='Refresh' CONTENT='.0000001;url=verifica.jsp'>");
                }
            } catch (SQLException error) {
                out.print(error.toString());
            }
            
        %>
    </body>
</html>
