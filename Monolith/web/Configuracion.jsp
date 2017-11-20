<%-- 
    Document   : Configuracion
    Created on : 20-nov-2017, 11:46:57
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/actividadstyle.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css/ConfiguracionCuenta.css" rel="stylesheet" type="text/css">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu.css">
        <script src="js/popper.min.js"></script>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/FormularioRegistro.js"></script>
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
        <title>Configuracion</title>
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
                            String Usuario = sesion.getAttribute("usuario").toString();
                            out.println("<a class=\"dropdown-item\" href=\"#\">" + Usuario + "</a>");
                            //////////////////////////////////////////////////////////////
                        %>

                        <a class="dropdown-item" href="#">Configuracion</a>
                        <a class="dropdown-item" href="CerrarSesion.jsp">Cerrar Sesion</a>
                    </div>
                </div>

            </div>
        </nav>

        <header>
            <div class="col-12">
                <div class="contenedor" id="uno" onclick="location.href = 'InicioSesion.jsp'" ondblclick="minimizar();">
                    <img class="icon" src="img/home.png" alt="HomeLogo">
                </div>

                <div class="contenedor" id="dos"  onclick="location.href = 'Examen.jsp'" ondblclick="minimizar();">
                    <img class="icon" src="img/examen.png"  alt="ExamenLogo">
                </div>

                <div class="contenedor" id="tres" onclick="location.href = 'Proyectos.jsp'" ondblclick="minimizar();">
                    <img class="icon" src="img/proyectos.png" alt="ProyectosLogo">
                </div>

                <div class="contenedor" id="cuatro"   onclick="location.href = 'Actividades.jsp'" ondblclick="minimizar();">
                    <img class="icon" src="img/tareas.png" alt="TareasLogo">
                </div>

                <div class="contenedor" id="cinco" onclick="location.href = 'Finanzas.jsp'" ondblclick="minimizar();">
                    <img class="icon" src="img/finanza.png" alt="FinanzasLogo">
                </div>
                <div class="contenedor" id="seis" onclick="agrandar6();" ondblclick="minimizar();">
                    <img class="icon" src="img/ruta.png" alt="RutaLogo">
                </div>
            </div>
        </header>
        <div class="container-fluid" style="padding-left:13px;padding-right:13px;">

            <!--Barra Navegacion-->


            <form class="form-register " role="form" id="registro" method="POST" action="CambiosUsuarios" >
                <h2 class="form-titulo">Configuracion</h2>
                <%
                    Connection con = null;
                    Statement sta = null;
                    ResultSet r = null;
                    String UsuarioRegreso="";
                    String InstitucionRegreso="";
                     String EstudiosRegreso="";
                     int EdadRegreso=0;
                     String PaisRegreso="";
                     String DireccionRegreso="";
                     String CorreoRegreso="";
                     String Password="";
                     
                    try {
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                        sta = con.createStatement();
                        r=sta.executeQuery("select * from Usuario where Nombreusuario='"+ Usuario +"';");
                        if(r.next()){
                            UsuarioRegreso=r.getString("NombreUsuario");
                            InstitucionRegreso=r.getString("Institucion");
                            EstudiosRegreso=r.getString("NivelEstudio");
                            EdadRegreso=r.getInt("Edad");
                            PaisRegreso=r.getString("Pais");
                            DireccionRegreso=r.getString("Direccion");
                            CorreoRegreso=r.getString("Correo");
                            Password=r.getString("Contrasena");
                            
                        }
                    } catch (Exception e) {

                    }
                %>
                <div class="contenedor-inputs container-fluid ">

                    <div class="form-group row" style="width:100%;">
                        <div class="col-6">
                            <label class="entrada" >Nombre Usuario</label>
                        </div>
                        <div class="col-6">
                            <input type="text" class=" form-control " style="width:100%;margin-top:10px;" id="nombre"  
                                   <%  
                                       out.println("value='"+UsuarioRegreso+"'");
                                   
                                   %>
                                   name="nombre" placeholder="Nombre Usuario" >
                        </div>
                    </div>

                    <div class="form-group row" style="width:100%;">
                        <div class="col-6">
                            <label class="entrada"  >Institucion </label>
                        </div>
                        <div class="col-6">
                            <input type="text" class="form-control" style="width:100%;margin-top:10px;" id="institucion"
                                    <%  
                                       out.println("value='"+InstitucionRegreso+"'");
                                   
                                   %>
                                   name="institucion" placeholder="Institucion" >
                        </div>
                    </div>

                    <div class="form-group row" style="width:100%;">
                        <div class="col-6">
                            <label class="entrada" >Nivel de Estudios</label>
                        </div>
                        <div class="col-6">
                            <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="estudios" 
                                  <%  
                                       out.println("value='"+EstudiosRegreso+"'");
                                   
                                   %>
                                   name="estudios" placeholder="Estudios" >
                        </div>
                    </div>
                    <div class="form-group row" style="width:100%;">
                        <div class="col-6">
                            <label class="entrada">Edad</label>
                        </div>
                        <div class="col-6">
                            <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="numero" 
                                   <%  
                                       out.println("value='"+EdadRegreso+"'");
                                   
                                   %>
                                   name="edad" placeholder="Edad" >
                        </div>
                    </div>
                    <div class="form-group row" style="width:100%;">
                        <div class="col-6">
                            <label class="entrada">Pais</label>
                        </div>
                        <div class="col-6">
                            <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="pais"
                                   <%  
                                       out.println("value='"+PaisRegreso+"'");
                                   %>
                                   name="pais" placeholder="Pais" >
                        </div>
                    </div>
                    <div class="form-group row" style="width:100%;">
                        <div class="col-6">
                            <label class="entrada" style="">Direccion</label>
                        </div>
                        <div class="col-6">
                            <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="path"
                                   <%  
                                       out.println("value='"+DireccionRegreso+"'");
                                   
                                   %>
                                   name="direccion" placeholder="Direccion" >
                        </div>
                    </div>
                    <div class="form-group row" style="width:100%;">
                        <div class="col-6">
                            <label class="entrada" style="">Correo</label>
                        </div>
                        <div class="col-6">
                            <input type="text" class="form-control" style="width:100%;margin-top:10px;"  id="correo" 
                                   <%  
                                       out.println("value='"+CorreoRegreso+"'");
                                   
                                   %>
                                   name="correo" placeholder="Correo" >
                        </div>
                    </div>
                    <div class="form-group row" style="width:100%;">
                        <div class="col-6">
                            <label class="entrada" style="">Contraseña</label>
                        </div>
                        <div class="col-6">
                            <input type="password" class="form-control" style="width:100%;margin-top:10px;"  id="contra" 
                                   <%  
                                       out.println("value='"+Password+"'");
                                   
                                   %>
                                   name="contra" placeholder="Contraseña" >
                        </div>
                    </div>

                    <div class="col-12" style="padding-left:40%;padding-right:40%;">
                        <input class="registro"  type="submit" id="Envio" value="Guardar Cambios">
                    </div>

                </div>
            </form>

    </body>
</html>
