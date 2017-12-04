<%-- 
    Document   : UsuarioNoRegistrado
    Created on : 20-nov-2017, 9:25:01
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Usuario No encontrado</title>
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
             <%
             HttpSession sesion = request.getSession();
             sesion.invalidate();
             %>
            <h2 class="form-titulo">Usuario no Registrado</h2>
            <div class="contenedor-inputs container-fluid ">
                <div class="row">
                    <div class="col-3"  style="margin-right:3%;width:300px; " >
                        
                    </div>
                    <div class="col-3" style="">
                        <button  onclick="location.href='index.html'" style="padding-left:42px;padding-right:42px;padding-top:12px;padding-bottom:12px;">Inicio</button>
                    </div>
                    <div class="col-3" >
                        <button  onclick="location.href='registro.html'"  style="padding-left:32px;padding-right:32px;padding-top:12px;padding-bottom:12px;">Registrarse</button>
                    </div>
                    <div class="col-3" style="margin-left:3%;width:300px;">
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
