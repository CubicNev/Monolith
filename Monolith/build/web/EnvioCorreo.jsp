<%-- 
    Document   : EnvioCorreo
    Created on : 25/11/2017, 05:59:13 PM
    Author     : Alex
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="modelo.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceso</title>
        <script>
            function Solicitar() {
                document.getElementById("alt").submit();
            }
        </script>
    </head>
    <body>
       <div style="margin: auto;">
            <img src="img/Procesando.gif" alt="Procesando" style="height: 150%; width: 150%; margin: auto; margin-left: 40%; margin-bottom: 50%;">
        </div>
        <%

            /////////////////////////////////////////////////////
            String Nom = request.getParameter("nombre");
            String Insti = request.getParameter("institucion");
            String Estudios = request.getParameter("estudios");
            int Edad = Integer.parseInt(request.getParameter("edad"));
            String pais = request.getParameter("pais");
            String direccion = request.getParameter("direccion");
            String correo = request.getParameter("correo");
            String pass = request.getParameter("contra");
            /////////////////////////////////////////////////////

            Connection c = null;
            Statement sta = null;
            ResultSet r = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                r = sta.executeQuery("select * from Usuario where NombreUsuario = '" + Nom + "';");
                if (r.next()) {
        %>
        <script>
            alert("Lo sentimos. El nombre de usuario que usted registro ya ha sido registrado, por favor intentelo de nuevo con un nombre de usuario diferente.");
            window.location = 'registro.html';
        </script>
        <%
        } else {
            rs = sta.executeQuery("select * from Usuario where Correo = '" + correo + "';");
            if (rs.next()) {
        %>
        <script>
            alert("Lo sentimos, pero alguien mas ya esta registrado con ese correo. Te aconsejamos busar a un abogado por si te estan robando la identidad");
            window.location = 'registro.html';
        </script>
        <%
        } else {
            //Obtencion del adendum
            String calcular = Nom + correo;
            int hashCode = calcular.hashCode();
            int adendum;
            if (hashCode < 0) {
                adendum = hashCode * -1;
            } else {
                adendum = hashCode;
            }
            //System.out.println(hashCode);
            //System.out.println(adendum);

            /////////////////////////////////////////////////////
            Email email = new Email();

            String de = "hawkward.ipn@gmail.com";
            String clave = "TheH4wK_fl1l7*5";
            String para = correo;
            String mensaje = "Se ha enviado el siguiente código de verificación: " + adendum + ", por favor ingreselo en la página.\n\n" + "Si recibió este correo por equivocación por favor ignorelo.\n\n" + "Gracias.";
            String asunto = "Verificación de Correo Electrónico";

            /* 
                
                String[] direcciones = {"correo numero 1","correo numero 2","correo numero 3","correo ..."}
                boolean resultado = email.enviarCorreo(de, clave, direcciones, mensaje, asunto);
            
             */
            boolean resultado = email.enviarCorreo(de, clave, para, mensaje, asunto);

            if (resultado) {
                //out.print("CORREO ELECTRONICO CORRECTAMENTE ENVIADO....." + "\n\n" + "<a href='index.jsp'>VOLVER AL INDEX</a>");
        %>
        <form action="altaAdendum.jsp" method="post" name="alt" id="alt">
            <input type="password" id="nombre" name="nombre" value="<%out.println(Nom);%>" >
            <input type="password" id="institucion" name="institucion" value="<%out.println(Insti);%>">
            <input type="password" id="estudios" name="estudios" value="<%out.println(Estudios);%>">
            <input type="password" id="numero" name="edad" value="<%out.println(Edad);%>">
            <input type="password" id="pais" name="pais" value="<%out.println(pais);%>">
            <input type="password" id="path" name="direccion" value="<%out.println(direccion);%>">
            <input type="password" id="correo" name="correo"  value="<%out.println(correo);%>">
            <input type="password" id="contra" name="contra" value="<%out.println(pass);%>">
            <input type="password" id="clav" name="clav" value="<%out.println(adendum);%>" >
        </form>


        <script>Solicitar();</script>
        <%
        } else { //  out.print("CORREO ELECTRONICO NO ENVIADO....." + "\n\n" + "<a href='index.jsp'>VOLVER AL INDEX</a>");
        %>

        <script> window.location = 'Error404.jsp';</script>

        <%
                        }
                    }
                }
            } catch (SQLException error) {
                out.print(error.toString());
            }
        %>
        </body>
</html>

