<%-- 
    Document   : CifrarAdendum
    Created on : 2/12/2017, 07:47:00 PM
    Author     : Alex
--%>

<%@page import="Cifrados.Seguridad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceso</title>
    </head>
    <body>
         <div style="margin: auto;">
            <img src="img/Procesando.gif" alt="Procesando" style="height: 150%; width: 150%; margin: auto; margin-left: 40%; margin-bottom: 50%;">
        </div>
        <%
        String name = request.getParameter("Usuario");
        String adem = request.getParameter("codigo");
        String pass = request.getParameter("contra");
        Seguridad sec = new Seguridad();
        sec.addKey(pass);
        String texto = sec.encriptar(adem);
        %>
        <form method="post" action="Comparacion.jsp" name="comparar" id="comparar">
            <input type="password" name="usu" id="usu" value="<%out.println(name);%>"/>
            <input type="password" name="cifrado" id="cifrado" value="<%out.println(texto);%>"/>
        </form>
        <script> document.getElementById("comparar").submit(); </script>
        </body>
</html>
