<%-- 
    Document   : Finanzas
    Created on : 18/10/2017, 10:53:56 PM
    Author     : memo0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Menu General</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Css/bootstrap.min.css">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu.css">
        <link rel="stylesheet" href="Css/Finanzas.css">
        <title>Finanzas</title>
        <style>
            .parte1{
                background: red;
            }
        </style>
    </head>
    <body>
        <div class="barraInicio navbar navbar-default " style="font-family:Mukta">Monolith<img  class="logo" src="img/logo.png" alt=""></div>
        <header>

            <div class="contenedor" id="uno">
                <img class="icon" src="img/home.png" alt="HomeLogo">
            </div>

            <div class="contenedor" id="dos">
                <img class="icon" src="img/examen.png" alt="ExamenLogo">
            </div>

            <div class="contenedor" id="tres">
                <img class="icon" src="img/proyectos.png" alt="ProyectosLogo">
            </div>

            <div class="contenedor" id="cuatro">
                <img class="icon" src="img/tareas.png" alt="TareasLogo">
            </div>

            <div class="contenedor" id="cinco">
                <img class="icon" src="img/finanza.png" alt="FinanzasLogo">
            </div>

            <div class="contenedor" id="seis">
                <img class="icon" src="img/ruta.png" alt="RutaLogo">
            </div>
        </header>
        <div class="encubador">
            <div class="prime">

            </div>
            <div class="segu">

            </div>
            <div class="terce">
                <div class="row justify-content-center">
                    <div class="col-auto titulo">
                        CATEGORIA FINANZAS
                    </div>
                    <div class="col-11 subtitulo">
                        <h2>Monto total: 2000</h2>
                    </div>

                </div>
                <br><br>
                <div class="row justify-content-center">
                    <div class="col-7 align-self-center">
                        <div class="card bg-primary text-white">
                            <img src="img/bg.jpg" class="card-img-top img-fluid" alt="">
                            <div class="card-body cajita">
                                <h3 class="card-title">Transporte</h3>
                                Monto total
                                <input type="text" id="total" name="total">
                                <br>
                                Ingreso
                                <input type="text" id="ingreso" name="ingreso">
                                <a href="#" class="btn btn-primary">Ir al post</a>
                                <br>
                                Retiro 
                                <input type="text" id="retiro" name="retiro">
                                <a href="#" class="btn btn-secondary">Ir al post</a>
                            </div>
                        </div>
                    </div>

                </div>
                <br><br>
                <div class="row justify-content-center">
                    <div class="col-7 align-self-center">
                        <div class="card text-white bg-success">
                            <div class="card-body cajita">
                                <h3 class="card-title">Comida</h3>
                                Monto total
                                <input type="text" id="total" name="total">
                                <br>
                                Ingreso
                                <input type="text" id="ingreso" name="ingreso">
                                <a href="#" class="btn btn-primary">Ir al post</a>
                                <br>
                                Retiro 
                                <input type="text" id="retiro" name="retiro">
                                <a href="#" class="btn btn-secondary">Ir al post</a>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <div class="cuar">
                <div class="row justify-content-center">
                    <div class="col-auto titulo">
                        GRAFICA FINANZAS
                    </div>
                    <div class="col-11 subtitulo">
                        <h2>Gastos en las ultimas 2 semanas</h2>
                    </div>
                </div>
                <br><br>
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

