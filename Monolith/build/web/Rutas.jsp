<%-- 
    Document   : Finanzas
    Created on : 18/10/2017, 10:53:56 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Rutas
        </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Css/bootstrap.min.css">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu.css">
        <link rel="stylesheet" href="Css/Rutas.css">
        <link href="Css/actividadstyle.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu.css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
         <script src="js/popper.min.js"></script>
        <script type="text/javascript">
            // funcion para aumentar la fuente
            function agrandar() {
                var tamaño = document.getElementById("uno");
                var tamaño2 = document.getElementById("dos");
                var tamaño3 = document.getElementById("tres");
                var tamaño4 = document.getElementById("cuatro");
                var tamaño5 = document.getElementById("cinco");
                var tamaño6 = document.getElementById("seis");
                tamaño.style.height = 130 + "%";
                tamaño2.style.height = 100 + "%";
                tamaño3.style.height = 100 + "%";
                tamaño4.style.height = 100 + "%";
                tamaño5.style.height = 100 + "%";
                tamaño6.style.height = 100 + "%";
            }
            function agrandar2() {
                var tamaño = document.getElementById("uno");
                var tamaño2 = document.getElementById("dos");
                var tamaño3 = document.getElementById("tres");
                var tamaño4 = document.getElementById("cuatro");
                var tamaño5 = document.getElementById("cinco");
                var tamaño6 = document.getElementById("seis");
                tamaño.style.height = 100 + "%";
                tamaño2.style.height = 130 + "%";
                tamaño3.style.height = 100 + "%";
                tamaño4.style.height = 100 + "%";
                tamaño5.style.height = 100 + "%";
                tamaño6.style.height = 100 + "%";

            }
            function agrandar3() {
                var tamaño = document.getElementById("uno");
                var tamaño2 = document.getElementById("dos");
                var tamaño3 = document.getElementById("tres");
                var tamaño4 = document.getElementById("cuatro");
                var tamaño5 = document.getElementById("cinco");
                var tamaño6 = document.getElementById("seis");
                tamaño.style.height = 100 + "%";
                tamaño2.style.height = 100 + "%";
                tamaño3.style.height = 130 + "%";
                tamaño4.style.height = 100 + "%";
                tamaño5.style.height = 100 + "%";
                tamaño6.style.height = 100 + "%";

            }
            function agrandar4() {
                var tamaño = document.getElementById("uno");
                var tamaño2 = document.getElementById("dos");
                var tamaño3 = document.getElementById("tres");
                var tamaño4 = document.getElementById("cuatro");
                var tamaño5 = document.getElementById("cinco");
                var tamaño6 = document.getElementById("seis");
                tamaño.style.height = 100 + "%";
                tamaño2.style.height = 100 + "%";
                tamaño3.style.height = 100 + "%";
                tamaño4.style.height = 130 + "%";
                tamaño5.style.height = 100 + "%";
                tamaño6.style.height = 100 + "%";

            }
            function agrandar5() {
                var tamaño = document.getElementById("uno");
                var tamaño2 = document.getElementById("dos");
                var tamaño3 = document.getElementById("tres");
                var tamaño4 = document.getElementById("cuatro");
                var tamaño5 = document.getElementById("cinco");
                var tamaño6 = document.getElementById("seis");
                tamaño.style.height = 100 + "%";
                tamaño2.style.height = 100 + "%";
                tamaño3.style.height = 100 + "%";
                tamaño4.style.height = 100 + "%";
                tamaño5.style.height = 130 + "%";
                tamaño6.style.height = 100 + "%";

            }
            function agrandar6() {
                var tamaño = document.getElementById("uno");
                var tamaño2 = document.getElementById("dos");
                var tamaño3 = document.getElementById("tres");
                var tamaño4 = document.getElementById("cuatro");
                var tamaño5 = document.getElementById("cinco");
                var tamaño6 = document.getElementById("seis");
                tamaño.style.height = 100 + "%";
                tamaño2.style.height = 100 + "%";
                tamaño3.style.height = 100 + "%";
                tamaño4.style.height = 100 + "%";
                tamaño5.style.height = 100 + "%";
                tamaño6.style.height = 130 + "%";

            }


        </script>
        <!--<style>
            .parte1{
                background: red;
            }
        </style>-->
    </head>
    <body>
        
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #00838F;">
            <a class="navbar-brand text-white" href="#">
                <img src="img/Logo.svg" width="30" height="30" class="d-inline-block align-top" alt="Logo">
                Monolith
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
             </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">

                <div class="navbar-nav ml-auto">
                    <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Usuario
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                         <%
    HttpSession sesion = request.getSession();
    String Usuario=sesion.getAttribute("usuario").toString();
    out.println("<a class=\"dropdown-item\""+Usuario+"</a>");
    //////////////////////////////////////////////////////////////
%>
                       
                        <a class="dropdown-item" href="Configuracion.jsp">Configuracion</a>
                        <a class="dropdown-item" href="CerrarSesion.jsp">Cerrar Sesion</a>
                    </div>
                </div>

            </div>
        </nav>



        <header>
          <div class="col-12">
                    <div class="contenedor" id="uno" onclick="location.href='InicioSesion.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/home.png" alt="HomeLogo">
                    </div>

                    <div class="contenedor" id="dos"  onclick="location.href='Examen.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/examen.png"  alt="ExamenLogo">
                    </div>

                    <div class="contenedor" id="tres" onclick="location.href='Proyectos.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/proyectos.png" alt="ProyectosLogo">
                    </div>

                    <div class="contenedor" id="cuatro"   onclick="location.href='Actividades.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/tareas.png" alt="TareasLogo">
                    </div>

                    <div class="contenedor" id="cinco" onclick="location.href='Finanzas.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/finanza.png" alt="FinanzasLogo">
                    </div>
                    <div class="contenedor" id="seis" onclick="location.href='Rutas.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/ruta.png" alt="RutaLogo">
                    </div>
                </div>
        </header>

        <div class="encubador">
            <div class="prime">

            </div>
            <div class="segu">

            </div>
            <div class="terce">
                <div class="row justify-content-center">
                    <div class="col-11 titulo ">
                        <img class="image1" src="img/ImagenRutaMapa.png" alt="LogoMapa"/>
                        Mapa
                        <img class="image2" src="img/ImagenRutaMapa.png" alt="LogoMapa"/>
                    </div>

                </div>
                <div class="row">
                    <div class="div1">
                            <input type="text" id="partida" name="partida" class="cuadros" placeholder=" Partida">
                            <input type="text" id="salida" name="salida" class="cuadros" placeholder=" Salida">
                        </div>
                        <div class="div2">
                            <img class="image3" src="img/ImagenEstrella.jpg" alt="LogoMapa"/>
                            <img class="image3" src="img/ImagenBuscar.png" alt="LogoMapa"/>
                        </div>
                    <!--<div class="col-11 align-self-center">
                        
                    </div>-->
                </div>
                <iframe class="mapa" src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d15035.755755219057!2d-99.0073675!3d19.5871165!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2smx!4v1509768142725" width="600" height="450" frameborder="0" style="border:0" allowfullscreen>

                </iframe>

            </div>
            <div class="cuar">
                <div class="row justify-content-center">
                    <div class="col-11 titulo ">
                        <img class="image1" src="img/ImagenUbicacion.png" alt="LogoMapa"/>
                        Lista de rutas
                        <img class="image2" src="img/ImagenUbicacion.png" alt="LogoMapa"/>
                    </div>

                </div>
                <br/>
                <div class="row justify-content-center">
                    <input type="text" class="rutas" name="rutas" placeholder=" Ruta 1"/>
                    <img src="img/ImagenRutaEliminar.png" alt="Borrar" class="img-borra"/>
                    <input type="text" class="rutas" name="rutas" placeholder=" Ruta 2"/>
                    <img src="img/ImagenRutaEliminar.png" alt="Borrar" class="img-borra"/>
                    <input type="text" class="rutas" name="rutas" placeholder=" Ruta 3"/>
                    <img src="img/ImagenRutaEliminar.png" alt="Borrar" class="img-borra"/>
                    <input type="text" class="rutas" name="rutas" placeholder=" Ruta 4"/>
                    <img src="img/ImagenRutaEliminar.png" alt="Borrar" class="img-borra"/>
                    <input type="text" class="rutas" name="rutas" placeholder=" Ruta 5"/>
                    <img src="img/ImagenRutaEliminar.png" alt="Borrar" class="img-borra"/>
                    <!--<div class="col-11 subtitulo">
                        <h2>Gastos en las ultimas 2 semanas</h2>
                    </div>-->
                </div>
                <br>
                <div class="row justify-content-center">
                    <div class="col-12 align-self-center">
                        <center><img src="img/grafica.png" alt=""></center>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

