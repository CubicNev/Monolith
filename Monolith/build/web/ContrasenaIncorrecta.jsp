<%-- 
    Document   : ContrasenaIncorrecta
    Created on : 20-nov-2017, 9:26:54
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contraseña Mal puesta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/pruebaregistro.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="js/bootstrap.min.js"  type="text/javascript">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/FormularioRegistro.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <link href="js/jquery-3.2.1.min.js"  type="text/javascript">
        <link href="js/jquery.validate.min.js"  type="text/javascript">
        <link href="js/bootstrap.min.js">
        <link href="js/FormularioRegistro.js"  type="text/javascript">
    </head>
     <body class="container-fluid">
        <div class="barraInicio navbar navbar-default " style="font-family:Mukta">Monolith<img  class="logo" src="img/logo.png"></div>
        <div class="form-register"  >
            <h2 class="form-titulo">Contraseña mal puesta</h2>
             <%
             HttpSession sesion = request.getSession();
             sesion.invalidate();
             %>
            <div class="contenedor-inputs container-fluid ">
                    <div class="col-12" style="padding-left:40%;padding-right:40%;">
                        <button  onclick="location.href='index.html'">Volver a Inicio</button>
                    </div>
            </div>
        </div>
    </body>
</html>
