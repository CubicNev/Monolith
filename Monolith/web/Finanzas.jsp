<%-- 
    Document   : Finanzas
    Created on : 18/10/2017, 10:53:56 PM
    Author     : memo0
--%>
<%@page import="java.sql.*, java.io.*"%>
<html>
    <head>
        <title>Actividades</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/actividadstyle.css" rel="stylesheet" type="text/css">
        <link href="Css/Menu.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css/finanzashtml.css" rel="stylesheet" type="text/css">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu.css">
        <script src="js/popper.min.js"></script>
        <script src='js/jquery-3.2.1.js'></script>
        <script src='js/bootstrap.min.js'></script>
        <script src='js/menu.js'></script>
    </head>
    <body>
        <%
            String titulo;
            titulo = request.getParameter("titulo");

            Connection c = null;
            Statement sta = null;
            ResultSet r = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
                sta.executeUpdate("insert into Finanzas values ('" + titulo + "','" + 0 + "','" + 0 + "','" + 0 + "');");
                out.print("<script> alert('Te has registrado exitosamente'); </script>");
                out.print("<script> window.location='index.html'; </script>");
            } catch (SQLException error) {
                out.print(error.toString());
            }
        %>
        <div class="container-fluid" style="padding-left:13px;padding-right:13px;">
            <div class="barraInicio navbar navbar-default " style="font-family:Mukta">Monolith<img  class="logo" src="img/logo.png" alt=""></div>
            <header>
                <div class="col-12">
                    <div class="contenedor" id="uno" onclick="agrandar();" ondblclick="minimizar();">
                        <img class="icon" src="img/home.png" alt="HomeLogo">
                    </div>

                    <div class="contenedor" id="dos" onclick="agrandar2();" ondblclick="minimizar();">
                        <img class="icon" src="img/examen.png" alt="ExamenLogo">
                    </div>

                    <div class="contenedor" id="tres" onclick="agrandar3();" ondblclick="minimizar();">
                        <img class="icon" src="img/proyectos.png" alt="ProyectosLogo">
                    </div>

                    <div class="contenedor" id="cuatro" onclick="agrandar4();" ondblclick="minimizar();">
                        <img class="icon" src="img/tareas.png" alt="TareasLogo">
                    </div>

                    <div class="contenedor" id="cinco" onclick="agrandar5();" ondblclick="minimizar();">
                        <img class="icon" src="img/finanza.png" alt="FinanzasLogo">
                    </div>
                    <div class="contenedor" id="seis" onclick="agrandar6();" ondblclick="minimizar();">
                        <img class="icon" src="img/ruta.png" alt="RutaLogo">
                    </div>
                </div>
            </header> 
            <div class="row categorias" >
                <div class="col-7">
                    <div class="row barrafinanza">
                        <div class="col-4 ">
                            <h2 align="left" class="titubarrafinianza"> Lista Finanzas</h2>
                        </div>
                        <div class="col-8">
                            <form class="form" action="Finanzas.jsp" method="post">
                                <div class="row formcategorias">
                                    <div class="col-7">
                                        <input class="form-control" name="titulo" id="titulo" placeholder="Nueva Categoria">
                                    </div>
                                    <div class="col-5">
                                        <button class="btn btn-primary" type="submit">Agregar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="row listafinanza">
                        <div class="card-panel">
                            <div class="card cartafinanza" >
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-8">
                                            <h4 class="card-title">Titulo Categoria Financiera</h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-8">
                                            Monto Total
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <form class="form-inline formnuvcategoria">
                                                <label>Ingreso</label>
                                                 <input class="form-control "  placeholder="Monto Ingreso">
                                                 <button class="btn btn-primary " type="submit">Ingresar</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <form class="form-inline formnuvcategoria">
                                                <label>Retiro</label>
                                                 <input class="form-control "  placeholder="Monto Retiro">
                                                 <button class="btn btn-primary " type="submit">Retirar</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
                <div class="col-5">
                    <div class="row barragrafica">
                        <div class="col-auto ">
                            <h2 align="left" class="titubarrafinianza">Grafico</h2>
                            <br>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
