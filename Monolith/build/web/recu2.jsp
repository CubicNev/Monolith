<%-- 
    Document   : recu2
    Created on : 20/04/2017, 02:15:05 AM
    Author     : memo0
--%>
<%@page import="correoEnvi.JCMail" %>
<%@page import="cifi.cifrado" %>
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
            String usuario = request.getParameter("nombre");
            String contra="";
            String correo="";
            String mensaje="";
            String enviado="";
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
                    contra = r.getString("Contrasena");
                    correo= r.getString("Correo");
                    JCMail corre = new JCMail();
                    corre.setFrom("hawkward.ipn@gmail.com");
                    corre.setPassword("TheH4wK_fl1l7*5");
                    corre.setTo(correo);
                    corre.setSubject("recuperacion de contraseña");
                    mensaje="Hola "+usuario+" este correo es autentico enviado por monilite para la recupereacion de tu cuenta gracias por confiar en nosotros tu contraseña es : "+contra+"";
                    String mensaje1="Para verificar la autenticidad de este correo por favor meter el siguiente texto a la pagina, tiene que ser igual al adendum";
                    cifrado memo= new cifrado();
                    enviado=memo.hola(mensaje);
                    cifichido memo1=new cifichido();
                    adendum=memo1.memito(enviado,usuario);
                    corre.setMessage(mensaje+"<br>"+mensaje1+"<br>"+"texto: "+enviado+"<br>"+"Adendum: "+adendum);
                    corre.SEND();
                    out.println("<script>alert('Correo enviado exitosamente')</script>");
                    con.close();
                    out.println("<meta http-equiv='Refresh' CONTENT='.0000001;url=recu.jsp'>");
                } else {
                    out.println("<script>alert('Este usuario no existe')</script>");
                    con.close();
                    out.println("<meta http-equiv='Refresh' CONTENT='.0000001;url=recu.jsp'>");
                }
            } catch (SQLException error) {
                out.print(error.toString());
            }
        %>
    </body>
</html>
