<%-- 
    Document   : FinanzaRetiro
    Created on : 15/11/2017, 08:35:33 PM
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
            HttpSession sesion = request.getSession();
            String razon = request.getParameter("retrerazon");
            String aux = request.getParameter("retirecanti");
            String titulo = request.getParameter("id");
            //String tipo= request.getParameter("name");
            int cuenta= Integer.parseInt(sesion.getAttribute("cuenta").toString());
            //int carta = Integer.parseInt(sesion.getAttribute("carta").toString());
            int monto = Integer.parseInt(aux);
            int categoria = 0;
            int total = 0;
            int aux1=0;
            //out.print(tipo);

            Connection c = null;
            Statement sta = null;
            ResultSet r = null;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
                r=sta.executeQuery("select IDCategoriaCuenta from CategoriaCuenta where NombreCategoria='"+titulo+"';");
                while(r.next()){
                    categoria=r.getInt("IDCategoriaCuenta");
                }
                sta.executeUpdate("insert into RegistroFinanza(IDCategoriaCuenta,Fecha,Monto,Accion) values ('" + categoria + "',now(),'-" + monto + "','" + razon + "');");
                
                r=sta.executeQuery("select Monto from RegistroFinanza where IDCategoriaCuenta='"+categoria+"';");
                while(r.next()){
                    aux1=r.getInt("Monto");
                    total=total+aux1;
                    out.println(total);
                    
                }
                sta.executeUpdate("update CategoriaCuenta set Monto='"+total+"' where IDCategoriaCuenta='"+categoria+"';");
                
                out.print("<script> alert('se ha añadido exitosamente'); </script>");
                out.print("<script> window.location='Finanzas.jsp'; </script>");
            } catch (SQLException error) {
                out.print(error.toString());
            }

        %>
    </body>
</html>
