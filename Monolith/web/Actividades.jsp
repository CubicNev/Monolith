<%-- 
    Document   : Actividades
    Created on : 05-nov-2017, 16:05:25
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Actividades</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/actividadstyle.css" rel="stylesheet" type="text/css">
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
        
        <!--Barra de usuario-->
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
    out.println("<a class=\"dropdown-item\" href=\"#\">"+Usuario+"</a>");
    //////////////////////////////////////////////////////////////
%>
                       
                        <a class="dropdown-item" href="#">Configuracion</a>
                        <a class="dropdown-item" href="#">Cerrar Sesion</a>
                    </div>
                </div>

            </div>
        </nav>
        <div class="container-fluid" style="padding-left:13px;padding-right:13px;">
        
            <!--Barra Navegacion-->
            <header>
                <div class="col-12">
                    <div class="contenedor" id="uno" onclick="location.href='InicioSesion.jsp'" ondblclick="minimizar();">
                        <img class="icon" src="img/home.png" alt="HomeLogo">
                    </div>

                    <div class="contenedor" id="dos" onclick="agrandar2();" ondblclick="minimizar();">
                        <img class="icon" src="img/examen.png"  alt="ExamenLogo">
                    </div>

                    <div class="contenedor" id="tres" onclick="agrandar3();" ondblclick="minimizar();">
                        <img class="icon" src="img/proyectos.png" alt="ProyectosLogo">
                    </div>

                    <div class="contenedor" id="cuatro"   onclick="location.href='Actividades.jsp'" ondblclick="minimizar();">
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
      <!--Fin Barra de Navegacion-->
      <!--Inicio Cartas de Actividades-->
      <!---TIuloModulo-->
            <div class="row" style="padding-top:125px;">
                <div class="titulolista col-12 ">
                    <h2 align="center">Lista actividades</h2>
                </div>
            </div>
     <!---Fin TituloModulo-->
     <!--Ejemplo Cartas-->
      
            <div class="col-12 cartasdiv " style="margin-bottom:13px;">
                <div class="card-columns ">
                    <div class="card carta" >
                        <h3 class="cart-title titulocarta">Nueva Actividad</h3>
                        <div class="card-block bloquecarta">
                            <p class="card-text">Nueva Actividad </p>
                            <div class="btn-group grupo-btn">
                                <button class="btn btn-block btn-primary" id="agregar"  data-toggle="modal" data-target="#exampleModal" >nueva Actividad</button>
                            </div>
                        </div>
                    </div>
                     <!--Modal de registro de Actividad-->
                    <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" align="center" style="text-align:center" id="exampleModalLabel">Nueva Actividad</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body actividadformcont"  >
                                    <form  class="actividadform" method="post" action="IngresoActividad" style="width:100%;"  >
                                        <div class="row targetactividad"  style="width:100%;">
                                            <div class="col-6 col-sm-auto" style="width:100%;">
                                                <label  class="col-form-label">Nombre actividad</label>
                                            </div>
                                            <div class="col-6  col-sm-auto" style="width:100%;">
                                                <input type="text" class="form-control" id="recipient-name" name="Titulo" placeholder="Nombre Actividad">
                                            </div>  
                                        </div> 
                                        <div class="row targetactividad" style="width:100%;">
                                            <div class="col-6 col-sm-auto" style="width:100%;">
                                                <label  class="col-form-label">Forma de Entrega</label>
                                            </div>
                                            <div class="col-6  col-sm-auto" style="width:100%;">
                                                <input type="text" class="form-control" id="recipient-name" name="FormaEntrega" placeholder="Forma de Entrega">
                                            </div>
                                        </div> 
                                        <div class="row targetactividad" style="width:100%;" >
                                            <div class="col-3 targetactividadfecha">
                                                <label  class="col-form-label">Fecha de Entrega</label>
                                            </div>
                                            <div class="col-3">
                                                <select id="inputState" class="form-control" name="Dia">
                                                    <option selected>Dia</option>
                                                    <option>...</option>
                                                </select>
                                            </div>
                                            <div class="col-3">
                                                <select id="inputState" class="form-control" name="Mes">
                                                    <option selected>Mes</option>
                                                    <option>...</option>
                                                </select>
                                            </div>
                                            <div class="col-3">
                                                <select id="inputState" class="form-control" name="Año">
                                                    <option selected>Año</option>
                                                    <option>...</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row descripcionproyecto">
                                            <label for="message-text" class="form-control-label descripcionproyecto" >Descripcion:</label>
                                            <textarea class="form-control descripcionproyecto" id="message-text" name="Descripcion"></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-5">
                                            </div>
                                            <div class="col-4">
                                                <button class="btn btn-primary">Guardar Actividad</button>
                                            </div>
                                            <div class="col-3">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
    <!--Fin del Modal de Registro Actividad-->
     <%
    Connection con = null;
    Statement sta = null;
    ResultSet r = null;
    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
        sta = con.createStatement();
        r = sta.executeQuery("select * from Actividad inner join usuario on actividad.IDUsuario=usuario.IDUsuario where usuario.NombreUsuario='"+Usuario+"';");
        while(r.next()){
            out.println(" <div class=\"card carta\" >");
               out.println("<div class=\"\">");
                  out.println("<h3 class=\"cart-title titulocarta\">"+r.getString("Titulo")+"</h3>"); 
                    out.println("</div>");       
                        out.println(" <div class=\"card-body bloquecarta\">");
                         out.println("<div class=\"container\">");
                           out.println("<div id=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">");
                              out.println("<div class=\"card\">");
                              out.println("<div class='card-header' role='tab' id='"+r.getInt("IDActividad")+r.getString("Titulo")+"'>");
                                out.println("<div class='card-header' role='tab' id='"+r.getInt("IDActividad")+r.getString("Titulo")+"'>");
                                out.println("<h5 class='mb-0'>");
                                  out.println("<a class='collapsed' data-toggle='collapse' data-parent='#accordion' href='#"+r.getInt("IDActividad")+"' aria-expanded='false' aria-controls='"+r.getInt("IDActividad")+"'>");
                                    out.println("Descripcion");
                                  out.println(" </a>");      
                                 out.println("</h5>");                  
                                out.println("</div>");              
                                out.println("<div id='"+r.getInt("IDActividad")+"' class='collapse' role='tabpanel' aria-labelledby='"+r.getInt("IDActividad")+r.getString("Titulo")+"'>");    
                                out.println("<div class='card-block'>");   
                                 out.println(r.getString("Descripcion"));
                               out.println("</div>");      
                              out.println("</div>");              
                             out.println("</div>");               
                            out.println("</div>");             
                        out.println("</div>");
                      out.println(" <div class='btn-group grupo-btn'>");
                         out.println(" <button class='btn btn-primary' id='checar'>Final</button>");
                         out.println("<button class='btn btn-primary' id='editar' data-toggle='modal' data-target='#exampleModal2'>Editar</button>");     
                         out.println("<button class='btn btn-primary' id='borrar'>Borrar</button>");     
                         out.println("</div>");
                      out.println("</div>");  
                    out.println("</div>");    
                    out.println("</div>"); 
        }
    } catch (SQLException error) {
        out.print(error.toString());
    }
    //////////////////////////////////////////////////////////////
%>
    
            </div>
        </div> 
        </div>
    </body>
</html>


