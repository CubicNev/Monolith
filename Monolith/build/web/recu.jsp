<%-- 
    Document   : recu
    Created on : 2/12/2017, 02:31:48 PM
    Author     : memo0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Recuperacion</title>
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
        <form class="form-register " role="form" id="recu" method="POST" action="recu2.jsp" >
            <h2 class="form-titulo">Recuperacion</h2>
            <div class="contenedor-inputs container-fluid ">

                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada" >Nombre Usuario</label>
                    </div>
                    <div class="col-6">
                        <input type="text" class=" form-control " style="width:100%;margin-top:10px;" id="nombre" name="nombre" placeholder="Nombre Usuario" required="">
                    </div>
                </div>
                <div class="col-12" style="padding-left:40%;padding-right:40%;">
                    <input class="registro"  type="submit" id="Envio" value="Recuperar">
                    <button class="registro" id="registro" onclick="location.href='verifica.jsp'" name="registro" >Verificacion</button>
                </div>

            </div>
        </form>
    </body>
</html>
