<%-- 
    Document   : Index
    Created on : 23/10/2017, 11:59:27 AM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PruebaLogin</title>                          
        <meta charset="UTF-8">                                              
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">

    </head>
    <body class="container-fluid">
        <%
            HttpSession sesion = request.getSession();
        
            if (sesion.getAttribute("id") == null) { // debería de poner .equals pero me lo acepta con doble igual
        %>
        <div class="barraInicio navbar navbar-default " style="font-family:Mukta">Monolith<img  class="logo" src="img/logo.png"></div>
        <!--Primera parte con la imagen de edificios y danlo la bienvenida al sistema  -->
        <div class="pimg1">
            <div class="ptext">
                <span class="border">
                    <!--Mensaje de Bienvenida  -->
                    Bienvenido a Monolith
                </span>
            </div>
        </div>
        <%
        }
        else{
        %>
        <div class="barraInicio navbar navbar-default " style="font-family:Mukta">Monolith<img  class="logo" src="img/logo.png"></div>
        <!--Primera parte con la imagen de edificios y danlo la bienvenida al sistema  -->
        <div class="pimg1">
            <div class="ptext">
                <span class="border">
                    <!--Mensaje de Bienvenida  -->
                    Bienvenido a Monolith: <%out.println(sesion.getAttribute("usuario"));%>
                </span>
            </div>
        </div>
        <!--Fin de seccion con imagenees del edificio  -->
        <!--Seccion explicando el sistema al usuario  -->
        <section class="section section-light">
            <!--Pregunta introductoria  -->
            <h2>¿Qué es Monolith?</h2>
            <!--Explicación  del sistema -->
            <p>
                Monolith una herramienta 
                para la organización no solo de tus tareas,
                proyectos, finanzas y tiempo si no también 
                para maximizar tu aprovechamiento.
            </p>
        </section>
        <!--Fin de seccion explicativa del sistema  -->
        <!--Imagen con registro  -->
        <div class="pimg2">
            <div class="login">
                <span>
                    <div class="loginBox">
                        <form method="post" action="InicioSesion.jsp">
                            <img src="img/user.png" class="user">
                            <h2>Ingresa Aqui</h2>
                            <p>Nombre Usuario</p>
                            <input type="text" name="usuario" placeholder="Nombre de Usuario" required>
                            <p>Contraseña</p>
                            <input type="password" name="contrasenia" placeholder="Contraseña" required>
                            <input type="submit" name="ingresar" value="Ingresar">
                        </form>
                        <a id="forgotpass" href="https://www.w3schools.com/html/html_links.asp">¿Olvidaste tu contraseña?</a>
                        <h2 id="nocuenta">¿No tienes cuenta?</h2>
                        <form>
                            <input type="submit" id="registro" name="s" value="Registrarse">
                        </form>
                    </div>
                </span>
            </div>
        </div>
        <section class="section section-dark">
            <!--Pregunta introductoria  -->
            <h2>Desarrollado por:</h2>
            <!--Explicación  del sistema -->
            <div class="row cola">
                <div class="col-3"><img  src="img/bishop.png"></div>
                <div class="col-3">Ricardo Alberto Machorro Vences</div>
                <div class="col-3"><img src="img/strategy.png"></div>
                <div class="col-3">J. Carlos Nevárez</div>
            </div>
            <div class="row cola">
                <div class="col-3"><img  src="img/tower.png"></div>
                <div class="col-3">Raúl Daniel Rojas Santiago</div>
                <div class="col-3"><img   src="img/bold.png"></div>
                <div class="col-3">Guillermo Ramírez Olvera</div>
            </div>
            <div class="row cola">
                <div class="col-7"><img  src="img/queen.png"></div>
                <div class="col-2">Alejandro Enríquez Rivera</div>
            </div>
        </section>
    </body>
</html>

