<%-- 
    Document   : SolicitarCodigo
    Created on : 25/11/2017, 09:42:15 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ingresa tu código</title>
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
        <%
        String correo = request.getParameter("correo");
        %>
        <style>
            .centrado{
                text-align: center; 
                margin-left: 12%;
                margin-bottom: 1em;
            }
            span{
                background-color: #ccffff;
            }
        </style>   
    </head>

    <body class="container-fluid">
        <div class="barraInicio navbar navbar-default " style="font-family:Mukta">Monolith<img  class="logo" src="img/logo.png"></div>
        <form  class="form-register " role="form" id="Terminar" method="POST" action="CifrarAdendum.jsp" >
            <h2 class="form-titulo">¡Ya casi terminas tu registro!</h2>
            <center><b> No cierres esta página </b></center>
            <div class="contenedor-inputs container-fluid ">
                <div class="centrado">
                    Solo te pedimos como último paso y como medida de seguridad que revises tu correo electrónico. <br/>
                    Se ha enviado un código de verificación a <span><%out.println(correo);%></span> 
                </div>

                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada" >Usuario: </label>
                    </div>
                    <div class="col-6">
                        <input type="text" class=" form-control " style="width:100%;margin-top:10px;" id="Usuario" name="Usuario" placeholder="Ingresa tu nombre de usuario" required />
                    </div>
                </div>
                
                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada" >Código: </label>
                    </div>
                    <div class="col-6">
                        <input type="text" class=" form-control " style="width:100%;margin-top:10px;" id="codigo" name="codigo" placeholder="Ingresa el código de verificación" required />
                    </div>
                </div>

                <div class="form-group row" style="width:100%;">
                    <div class="col-6">
                        <label class="entrada"  >Contraseña: </label>
                    </div>
                    <div class="col-6">
                        <input type="password" class="form-control" style="width:100%;margin-top:10px;" id="contra" name="contra" placeholder="Ingresa la contraseña con la que te registraste" required />
                    </div>
                </div>               
                <div class="col-12" style="padding-left:40%;padding-right:40%;">
                    <!--<input class="registro"  type="submit" id="Envio" value="Terminar Registro">-->
                    <input class="registro"  type="submit" id="Envio" value="Terminar Registro">
                </div>
            </div>
        </form>
    </body>
</html>
