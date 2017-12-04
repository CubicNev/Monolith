<%-- 
    Document   : FinanzaEliminar
    Created on : 17/11/2017, 08:41:45 AM
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
            String titulo = request.getParameter("id");
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
                r=sta.executeQuery("select * from CategoriaCuenta where NombreCategoria='"+titulo+"';");
                if(r.next()){
                    sta.executeUpdate("delete from CategoriaCuenta where NombreCategoria='"+titulo+"';");
                }
                else{
                    out.print("<script> alert('no existe'); </script>");
                    out.print("<script> window.location='Finanzas.jsp'; </script>");
                }
                out.print("<script> alert('se ha eliminado exitosamente exitosamente'); </script>");
                out.print("<script> window.location='Finanzas.jsp'; </script>");
            } catch (SQLException error) {
                out.print(error.toString());
            }
        %>
    </body>
</html>
