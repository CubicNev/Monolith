<%-- 
    Document   : Proyectos
    Created on : 06-nov-2017, 20:12:39
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Proyectos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/proyectostyle.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu.css">
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
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
    out.println("<a class=\"dropdown-item\" >"+Usuario+"</a>");
    //////////////////////////////////////////////////////////////
%>
                       
                        <a class="dropdown-item" href="Configuracion.jsp">Configuracion</a>
                        <a class="dropdown-item" href="CerrarSesion.jsp">Cerrar Sesion</a>
                    </div>
                </div>

            </div>
        </nav>
        <div class="container-fluid" style="padding-left:13px;padding-right:13px;">
            <header>
                <div class="col-12">
                    <div class="contenedor" id="uno" onclick="location.href='InicioSesion.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/home.png" alt="HomeLogo">
                    </div>

                    <div class="contenedor" id="dos" onclick="location.href='Examen.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/examen.png" alt="ExamenLogo">
                    </div>

                    <div class="contenedor" id="tres" onclick="location.href='Proyectos.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/proyectos.png" alt="ProyectosLogo">
                    </div>

                    <div class="contenedor" id="cuatro"  onclick="location.href='Proyectos.jsp'"ondblclick="minimizar();">
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

            <div class="row" style="padding-top:125px;">
                <div class="titulolista col-12 ">
                    <h2>Lista proyectos</h2>
                </div>
            </div>

            <div class="col-12 cartasdiv " style="margin-bottom:13px;">
                <div class="card-columns ">
                   
                    <div class="card carta" >
                        <h3 class="cart-title titulocarta">Nuevo Proyecto</h3>
                        <div class="card-block bloquecarta">
                            <p class="card-text">Nuevo Proyecto </p>
                            <div class="btn-group grupo-btn">
                                <button class="btn btn-block btn-primary" id="agregar"  data-toggle="modal" data-target="#exampleModal" >Nuevo Proyecto</button>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" align="center" style="text-align:center" id="exampleModalLabel">Nuevo Proyecto</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body actividadformcont"  >
                                    <form  class="actividadform" style="width:100%;"  >
                                        <div class="row targetactividad"  style="width:100%;">
                                            <div class="col-6 col-sm-auto" style="width:100%;">
                                                <label  class="col-form-label">Nombre Proyecto</label>
                                            </div>
                                            <div class="col-6  col-sm-auto" style="width:100%;">
                                                <input type="text" class="form-control" id="recipient-name" placeholder="Nombre Actividad">
                                            </div>  
                                        </div> 
                                        <div class="row targetactividad" style="width:100%;">
                                            <div class="col-6 col-sm-auto" style="width:100%;">
                                                <label  class="col-form-label">Forma de Entrega</label>
                                            </div>
                                            <div class="col-6  col-sm-auto" style="width:100%;">
                                                <input type="text" class="form-control" id="recipient-name" placeholder="Forma de Entrega">
                                            </div>
                                        </div> 
                                        <div class="row targetactividad" style="width:100%;" >
                                            <div class="col-12 targetactividadfecha">
                                                <label  class='col-form-label'>Fecha de Entrega</label>
                                                <input type="date"  class="col-12" name="FechaEntrega"> 
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row ">
                                            <div class="col-12 ">
                                                <h5 class="modal-title "  id="exampleModalLabel">Contribuyentes</h5>
                                            </div>
                                        </div>
                                        <hr style="height:40px;">
                                        <div class="row elementocolaboradores">
                                            <div class="col-4 " style="width:100%;">
                                                <label  class="col-form-label">Nombre Integrante</label>
                                            </div>
                                            <div class="col-4  " style="width:100%;">
                                                <input type="text" class="form-control" id="recipient-name" placeholder="Nombre Integrante">
                                            </div>
                                            <div class="col-4" style="width:100%;">
                                                <button class="btn btn-primary">Agregar</button>
                                            </div>
                                        </div>

                                        <div class="row ">
                                            <div class="col-12 listacolaboradores " >
                                                <div class="row elementocolaboradores">

                                                </div>
                                                <div class="card">
                                                    <div class="card-block">
                                                        <div class="row">
                                                            <div class="col-10">Nombre participante</div>
                                                            <div class="col-2"><button class="btn btn-primary">Eliminar</button></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-block">
                                                        <div class="row">
                                                            <div class="col-10">Nombre participante</div>
                                                            <div class="col-2"><button class="btn btn-primary">Eliminar</button></div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-block">
                                                        <div class="row">
                                                            <div class="col-10">Nombre participante</div>
                                                            <div class="col-2"><button class="btn btn-primary">Eliminar</button></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <label for="message-text" class="form-control-label descripcionproyecto">Descripcion:</label>
                                            <textarea class="form-control descripcionproyecto" id="message-text"></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-5">
                                            </div>
                                            <div class="col-4">
                                                <button class="btn btn-primary">Guardar Proyecto</button>
                                            </div>
                                            <div class="col-3">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
 <!--
                    <div class="card carta" >
                        <div class="">
                            <h3 class="cart-title titulocarta">Proyecto 1</h3>
                        </div>
                        <div class="card-body bloquecarta">
                            <div class="container">
                                <div id="accordion" role="tablist" aria-multiselectable="false">
                                    <div class="card">
                                        <div class="card-header" role="tab" id="headingOne">
                                            <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                                    Descripcion
                                                </a>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headinOne">
                                            <div class="card-block">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-group grupo-btn">
                              
                                <button class="btn btn-primary" id="checar">Final</button>
                                <button class="btn btn-primary" id="editar">Editar</button>
                                <button class="btn btn-primary" onclick="location.href='ChatWindow'" id="Chat">Chat</button>
                                <button class="btn btn-primary" id="borrar">Borrar</button>
                               
                            </div>
                        </div>
                    </div>
                    <div class="card carta" >
                        <div class="">
                            <h3 class="cart-title titulocarta">Proyecto 2</h3>
                        </div>
                        <div class="card-body bloquecarta">
                            <div class="container">
                                <div id="accordion" role="tablist" aria-multiselectable="false">
                                    <div class="card">
                                        <div class="card-header" role="tab" id="headingTwo">
                                            <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    Descripcion
                                                </a>
                                            </h5>
                                        </div>
                                        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="card-block">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-group grupo-btn">
                                <button class="btn btn-primary" id="checar">Final</button>
                                <button class="btn btn-primary" id="editar">Editar</button>
                                <button class="btn btn-primary" id="Chat">Chat</button>
                                <button class="btn btn-primary" id="borrar">Borrar</button>
                            </div>
                        </div>
                    </div>
                    <div class="card carta" >
                        <div class="">
                            <h3 class="cart-title titulocarta">Pryoecto 3</h3>
                        </div>
                        <div class="card-body bloquecarta">
                            <div class="container">
                                <div id="accordion" role="tablist" aria-multiselectable="false">
                                    <div class="card">
                                        <div class="card-header" role="tab" id="headingThree">
                                            <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    Descripcion
                                                </a>
                                            </h5>
                                        </div>
                                        <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="card-block">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-group grupo-btn">
                                <button class="btn btn-primary" id="checar">Final</button>
                                <button class="btn btn-primary" id="editar">Editar</button>
                                <button class="btn btn-primary" id="Chat">Chat</button>
                                <button class="btn btn-primary" id="borrar">Borrar</button>
                            </div>
                        </div>
                    </div>
                    <div class="card carta" >
                        <div class="">
                            <h3 class="cart-title titulocarta">Proyecto 4</h3>
                        </div>
                        <div class="card-body bloquecarta">
                            <div class="container">
                                <div id="accordion" role="tablist" aria-multiselectable="false">
                                    <div class="card">
                                        <div class="card-header" role="tab" id="headingFour">
                                            <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                    Descripcion
                                                </a>
                                            </h5>
                                        </div>
                                        <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour">
                                            <div class="card-block">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-group grupo-btn">
                                <button class="btn btn-primary" id="checar">Final</button>
                                <button class="btn btn-primary" id="editar">Editar</button>
                                <button class="btn btn-primary" id="Chat">Chat</button>
                                <button class="btn btn-primary" id="borrar">Borrar</button>
                            </div>
                        </div>
                    </div>
                </div>
 <div class="card-body bloquecarta">
                            <div class="container">
                                <div id="accordion" role="tablist" aria-multiselectable="false">
                                    <div class="card">
                                        <div class="card-header" role="tab" id="headingOne">
                                            <h5 class="mb-0">
                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                                    Descripcion
                                                </a>
                                            </h5>
                                        </div>
                                        <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headinOne">
                                            <div class="card-block">
                                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-group grupo-btn">
                                <button class="btn btn-primary" id="checar">Final</button>
                                <button class="btn btn-primary" id="editar">Editar</button>
                                <button class="btn btn-primary" onclick="location.href='ChatWindow'" id="Chat">Chat</button>
                                <button class="btn btn-primary" id="borrar">Borrar</button>
                            </div>
                        </div>
                    </div>-->
            </div>
        </div>
    </body>
</html>
