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
        <script src="js/popper.min.js"></script>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/validacionactividades.js"></script>
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
        
            <!--Barra Navegacion-->
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
     
      <!--inico Carta Nueva Actividad-->
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
       <!--Fin Carta Nueva Actividad-->
       
       <!--Inicio Modal Nueva Actividad-->
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
                                    <form  class="actividadform" id="actividadform" style="width:100%;" method="post" action="IngresoActividad"  >
                                        <div class="row targetactividad"  style="width:100%;">
                                            <div class="col-6 col-sm-auto" style="width:100%;">
                                                <label  class="col-form-label">Nombre actividad</label>
                                            </div>
                                            <div class="col-6  col-sm-auto" style="width:100%;">
                                                <input type="text" class="form-control" id="Titulo" placeholder="Nombre Actividad" name="Titulo">
                                            </div>  
                                        </div> 
                                        <div class="row targetactividad" style="width:100%;">
                                            <div class="col-6 col-sm-auto" style="width:100%;">
                                                <label  class="col-form-label">Forma de Entrega</label>
                                            </div>
                                            <div class="col-6  col-sm-auto" style="width:100%;">
                                                <input type="text" class="form-control" id="FormaEntrega" placeholder="Forma de Entrega"  name="FormaEntrega">
                                            </div>
                                        </div> 
                                        <div class="row targetactividad" style="width:100%;" >
                                            <div class="col-12 targetactividadfecha">
                                                <label  class='col-form-label'>Fecha de Entrega</label>
                                                <input type="date"  class="col-12" id="FechaEntrega" name="FechaEntrega"> 
                                            </div>
                                        </div>
                                        <div class="row descripcionproyecto">
                                            <label for="message-text" class="form-control-label descripcionproyecto">Descripcion:</label>
                                            <textarea id="Descripcion" class="form-control descripcionproyecto" id="message-text" name="Descripcion"></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-5">
                                            </div>
                                            <div class="col-4">
                                                <button class="btn btn-primary" type="submit">Guardar Actividad</button>
                                            </div>
                                            <div class="col-3">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Fin Modal Nueva Actividad-->
                     <!--Modal de registro de Actividad-->
                     <jsp:include page="modal.jsp" />
                    
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
            /*Cartas de Actividades */
            out.println(" <div class=\"card carta\" >");
               out.println("<div class=\"\">");
                  out.println("<h3 class=\"cart-title titulocarta\">"+r.getString("Titulo")+"</h3>"); 
                    out.println("</div>");       
                        out.println(" <div class=\"card-body bloquecarta\">");
                         out.println("<div class=\"container\">");
                           out.println("<div id=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">");
                              out.println("<div class=\"card\">");
                              out.println("<div class='card-header' role='tab' id='"+r.getInt("IDActividad")+r.getString("Titulo")+r.getInt("IDActividad")+"'>");
                                out.println("<div class='card-header' role='tab' id='"+r.getInt("IDActividad")+r.getString("Titulo")+r.getInt("IDActividad")+"'>");
                                out.println("<h5 class='mb-0'>");
                                out.println("<input type='hidden' name='IdentificadorBorrar' id='price' value='"+r.getInt("IDActividad")+"'>");
                                  out.println("<a class='collapsed' data-toggle='collapse' data-parent='#accordion' href='#"+r.getInt("IDActividad")+"-"+ r.getInt("IDActividad")+"' aria-expanded='false' aria-controls='"+r.getInt("IDActividad")+"'>");
                                    out.println("Descripcion");
                                  out.println(" </a>");      
                                 out.println("</h5>");                  
                                out.println("</div>");              
                                out.println("<div id='"+r.getInt("IDActividad")+"-"+ r.getInt("IDActividad")+"' class='collapse' role='tabpanel' aria-labelledby='"+r.getString("Titulo")+r.getInt("IDActividad")+"'>");    
                                out.println("<div class='card-block'>");   
                                 out.println(r.getString("Descripcion"));
                               out.println("</div>");      
                              out.println("</div>");              
                             out.println("</div>");               
                            out.println("</div>");             
                        out.println("</div>");
                      out.println(" <div class='btn-group grupo-btn'>");
                         out.println(" <button class='btn btn-primary' id='checar'>Final</button>");
                         out.println("<button class='btn btn-primary' id='editar' data-toggle='modal' data-target='#"+r.getInt("IDActividad")+"'>Editar</button>");     
                         out.println("<button class='btn btn-primary' id='borrar' data-toggle='modal' data-target='#"+r.getInt("IDActividad")+"Borrar'>Borrar</button>");     
                         out.println("</div>");
                      out.println("</div>");  
                    out.println("</div>");    
                    out.println("</div>");
                   
                    /*Final de Actividades ya hechas*/
                   
                    //Modal de Actividades ya hechas/*
                  out.println("<div class='modal fade bd-example-modal-lg'  id='"+r.getInt("IDActividad")+"' tabindex='-1' role='dialog' aria-labelledby='myLargeModalLabel' aria-hidden='true'>");
                     out.println("<div class='modal-dialog modal-lg'>");
                        out.println("<div class='modal-content'>");
                           out.println("<div class='modal-header'>");
                              out.println("<h5 class='modal-title' align='center' style='text-align:center'  id='"+r.getInt("IDActividad")+"'>"+r.getString("Titulo")+"</h5>");
                                  out.println("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                                     out.println("<span aria-hidden='true'>&times;</span>");
                                    out.println("</button>");
                          out.println("</div>");
                         out.println("<div class='modal-body actividadformcont'>");
                         out.println("<form  class=\"actividadform\" id=\"actividadform\" style='width:100%;' method='post' action='CambioActividad' >");
                          out.println("<div class='row targetactividad'  style='width:100%;'>");;
                                  out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                      out.println("<label  class='col-form-label' name='Identificador' value='"+r.getInt("IDActividad")+"'>Nombre actividad</label>");
                                       out.println(" <input type='hidden' name='Identificador' id='price' value='"+r.getInt("IDActividad")+"'>");
                                      out.println("</div>");
                                     out.println("<div class='col-6  col-sm-auto' style='width:100%;'>");
                                       out.println("<input type='text' class='form-control' id='Titulo' placeholder='Nombre Actividad' name='Titulo' value='"+r.getString("Titulo")+"'>");
                                    out.println("</div>");  
                                    out.println(" </div>");
                                    out.println("<div class='row targetactividad' style='width:100%;'>");
                                       out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                          out.println("<label  class='col-form-label'>Forma de Entrega</label>");
                                     out.println("</div>");
                                    out.println("<div class='col-6  col-sm-auto' style='width:100%;'>");
                                    out.println("<input type='text' class='form-control' id='recipient-name' placeholder='Forma de Entrega'  name='FormaEntrega' value='"+r.getString("FormaDeEntregar")+"'>");
                                        out.println(" </div>");   
                                     out.println("</div>"); 
                                     
                                     
                                out.println("<div class='row targetactividad' style='width:100%;' >");
                                    out.println("<div class='col-12 targetactividadfecha'>");
                                 out.println("<label  class='col-form-label'>Fecha de Entrega</label>");
                                 out.println("<input type='date' id='FechaEntrega' class='col-12' name='FechaEntrega' value='"+r.getString("FechaLimite")+"'> ");
                                out.println("</div>");
                                 out.println("</div>");       
                                 
                                 
                       out.println("<div class='row descripcionproyecto'>");
                             out.println("<label for='message-text' class='form-control-label descripcionproyecto'>Descripcion:</label>");
                                out.println("<textarea class='form-control descripcionproyecto' id='Descripcion' name='Descripcion'>"+r.getString("Descripcion")+"</textarea>");
                                   out.println("</div>");
                                     out.println("<div class='row'>");
                                      out.println("<div class='col-5'>");
                                         out.println("</div>");
                                           out.println("<div class='col-4'>");
                                              out.println("<button class='btn btn-primary'>Guardar Cambios</button>");
                                         out.println("</div>");
                                       out.println("<div class='col-3'>");
                                  out.println("</div>");
                              out.println("</div>");
                            out.println("</form>");
                      out.println("</div>");
                     out.println("</div>");
                 out.println(" </div>");
              out.println(" </div>");
                    /*Modal Actividades ya hechas*/
                    
                    //Modal ELimiana Actividad /*
        out.println("<div class='modal fade bd-example-modal-lg'  id='"+r.getInt("IDActividad")+"Borrar' tabindex='-1' role='dialog' aria-labelledby='myLargeModalLabel' aria-hidden='true'>");
                     out.println("<div class='modal-dialog modal-lg'>");
                        out.println("<div class='modal-content'>");
                           out.println("<div class='modal-header'>");
                              out.println("<h5 class='modal-title' align='center' style='text-align:center'>Seguro que quieres borrar la Actividad:"+r.getString("Titulo")+"</h5>");
                                  out.println("<button type='button' class='close' data-dismiss='modal' aria-label='Close'>");
                                     out.println("<span aria-hidden='true'>&times;</span>");
                                    out.println("</button>");
                          out.println("</div>");
                         out.println("<div class='modal-body actividadformcont'>");
                         out.println("<form  class='actividadform' style='width:100%;' method='post' action='ELiminarActividad' >");
                          out.println("<div class='row targetactividad'  style='width:100%;'>");;
                                  out.println("<div class='col-6 col-sm-auto' style='width:100%;'>");
                                      out.println("<label  class='col-form-label'>La Actividad:"+r.getString("Titulo")+" se borra permenentemente del sistema</label>");
                                       out.println(" <input type='hidden' name='IdentificadorBorrar' id='price' value='"+r.getInt("IDActividad")+"'>");
                                      out.println("</div>");
                                 out.println("<div class='row ' style='width:100%;padding-left:39%;padding-right:39%;'>");
                                          out.println("<button type='button' style='margin-right:3px;margin-bottom:3px;' class='btn btn-primary' data-dismiss='modal' aria-label='Close'>Cancelar</button>");
                                          out.println("<button type='sumbit' style='margin-left:3px;' class='btn btn-primary '>Aceptar</button>");
                                  out.println("</div>");
                              out.println("</div>");
                            out.println("</form>");
                      out.println("</div>");
                     out.println("</div>");
                 out.println(" </div>");
              out.println(" </div>");
    

                    // Fin Modal ELimiana Actividad /*
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


