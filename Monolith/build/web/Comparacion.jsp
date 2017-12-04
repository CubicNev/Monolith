<%-- 
    Document   : Comparacion
    Created on : 2/12/2017, 11:52:33 PM
    Author     : Alex
--%>

<%@page import="Cifrados.Seguridad"%>
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
        <title>Proceso</title>
    </head>
    <body>
         <div style="margin: auto;">
            <img src="img/Procesando.gif" alt="Procesando" style="height: 150%; width: 150%; margin: auto; margin-left: 40%; margin-bottom: 50%;">
        </div>
        <%
            Seguridad objeto = new Seguridad();
            String id = "";
            String idAdem = "";
            String contraUsu = "";
            String verdadero = "";
            String valido;
            String descifrado;
            String usuario = request.getParameter("usu");
            String cifrado = request.getParameter("cifrado");
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
                r = sta.executeQuery("select * from Validacion where Nombre = '" + usuario + "';");
                if (r.next()) {
                    verdadero = r.getString("adendum");
                    idAdem = r.getString("IdAdendum");
                    rs = sta.executeQuery("select * from Usuario where NombreUsuario = '" + usuario + "';");
                    if (rs.next()) {
                        contraUsu = rs.getString("Contrasena");
                        id = rs.getString("IDUsuario");
                        valido = rs.getString("Autenticado");
                        if (valido.equals("Si")) {
        %>
        <script>
            alert("Ya has autentificado este correo con anterioridad");
            window.location = 'index.html';
        </script>
        <%
        } else {

            objeto.addKey(contraUsu);
            descifrado = objeto.desencriptar(cifrado);
            if (verdadero.equals(descifrado)) {
                //out.println("Exitoso");
                sta.executeUpdate("update Usuario set Autenticado='Si' where IDUsuario = " + id + ";");
                HttpSession sesion = request.getSession();
                sesion.setAttribute("usuario", usuario);
                sesion.setAttribute("password", contraUsu);
                //response.sendRedirect("InicioSesion.jsp");
        %>
        <script>
            alert("¡Listo!. Ha completado su registro exitosamente");
            window.location = 'InicioSesion.jsp';
        </script>
        <%        } else {
            //out.println("No exitoso");
            sta.executeUpdate("delete from Usuario where IDUsuario = " + id + ";"); //aqui no lleva el * en el delete
            sta.executeUpdate("delete from Validacion where IdAdendum = " + idAdem + ";");
        %>
        <script>
            alert("Lo sentimos, no coincide el código de verificación o la contraseña. Por favor vuelva a registrarse y vuelva a llenar los campos correctamente.");
            window.location = 'registro.html';
        </script>
        <%
                    }
                }
            }
        } else {
        %> 
        <script>
            alert("Usuario no encontrado, por favor intentelo de nuevo y asegurese de ingresar todos los caracteres correctamente");
            window.location = "SolicitarCodigo.jsp";
        </script>     
        <%
                }
            } catch (SQLException error) {
                out.print(error.toString());
            }

        %>
         </body>
</html>
