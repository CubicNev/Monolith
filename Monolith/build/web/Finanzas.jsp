<%-- 
    Document   : Finanzas
    Created on : 18/10/2017, 10:53:56 PM
    Author     : memo0
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*, java.io.*"%>
<html>
    <head>
        <title>Finanzas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/actividadstyle.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="Css/Menu.css">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="Css/finanzashtml.css" rel="stylesheet" type="text/css">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu.css">
        <script src="js/Chart.js"></script>
        <script src="js/popper.min.js"></script>
        <script src='js/jquery-3.2.1.js'></script>
        <script src='js/bootstrap.min.js'></script>
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
        <%

            HttpSession sesion = request.getSession();
            
            Connection c = null;
            Statement sta = null;
            ResultSet r = null;
            int num = 0;
            int monto = 0;
            if (sesion.getAttribute("usuario")==null) {
                out.println("<script>location.replace('Error404.jsp');</script>");
            } else {
                String usuario = sesion.getAttribute("usuario").toString();
                try {
                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                    sta = c.createStatement();
                    r = sta.executeQuery("select IDUsuario from Usuario where NombreUsuario='" + usuario + "';");
                    while (r.next()) {
                        num = r.getInt("IDUsuario");
                        sesion.setAttribute("idusario", num);

                    }
                    r = sta.executeQuery("select * from Cuenta where IDusuario='" + num + "'");
                    while (!(r.next())) {
                        sta.executeUpdate("insert into Cuenta(IDusuario,MotoTotal) values('" + num + "','" + monto + "');");
                    }

                } catch (SQLException error) {
                    //out.print(error.toString());
                }
            }
        %>
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
                            if (sesion.getAttribute("usuario")==null) {
                                out.println("<script>location.replace('Error404.jsp');</script>");
                            } else {
                                String usuario = sesion.getAttribute("usuario").toString();
                                out.println("<a class=\"dropdown-item\" " + usuario + "</a>");
                            }
                            //HttpSession sesion = request.getSession();
                            

                            
                            //////////////////////////////////////////////////////////////
                        %>

                        <a class="dropdown-item" href="Configuracion.jsp">Configuracion</a>
                        <a class="dropdown-item" href="CerrarSesion.jsp">Cerrar Sesion</a>
                    </div>
                </div>

            </div>
        </nav>


        <!--Barra Navegacion-->
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
                <div class="contenedor" id="seis" onclick="location.href = 'Rutas.jsp'" ondblclick="minimizar();">
                    <img class="icon" src="img/ruta.png" alt="RutaLogo">
                </div>
            </div>
        </header>
        <div class="container-fluid" style="padding-left:13px;padding-right:13px;">
            <div class="row categorias" >
                <div class="col-7">
                    <div class="row barrafinanza">
                        <div class="col-4 ">
                            <%
                                int totalchido = 0;
                                int totalxd = 0;
                                int IDCuenta = 0;
                                if (sesion.getAttribute("usuario")==null) {
                                    out.println("<script>location.replace('Error404.jsp');</script>");
                                } else {
                                    String usuario = sesion.getAttribute("usuario").toString();
                                    Connection co = null;
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        co = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                                        sta = co.createStatement();

                                        r = sta.executeQuery("select IDCuenta from Cuenta where IDusuario='" + num + "'");
                                        while (r.next()) {
                                            IDCuenta = r.getInt("IDCuenta");
                                            sesion.setAttribute("cuenta", IDCuenta);
                                        }

                                        r = sta.executeQuery("select Monto from CategoriaCuenta where IDCuenta='" + IDCuenta + "';");
                                        while (r.next()) {
                                            totalxd += r.getInt("Monto");
                                        }

                                        sta.executeUpdate("update Cuenta set MotoTotal='" + totalxd + "' where IDCuenta='" + IDCuenta + "';");

                                        r = sta.executeQuery("select MotoTotal from Cuenta where IDCuenta='" + IDCuenta + "' ;");
                                        while (r.next()) {
                                            totalchido = r.getInt("MotoTotal");

                                        }
                                    } catch (SQLException error) {
                                        out.print(error.toString());
                                    }
                                    out.println("<h4 align='left' class='titubarrafinianza'> Lista Finanzas  Toltal:" + totalchido + "</h4>");
                                    //out.println("<form name='form'>");
                                    //out.println("<input type='hidden' name='x'> ");
                                    //out.println("<button class='btn btn-primary' type='submit' name='CONSUTODOS' id='todos' >Consultar</button>");
                                }

                                //out.println("</form>");
                            %>

                        </div>
                        <div class="col-8">

                            <form class="form" action="Finanzaconect.jsp" method="post">
                                <div class="row formcategorias">
                                    <div class="col-7">
                                        <input class="form-control" id="titulo" name="titulo" placeholder="Nueva Categoria" required="" onkeypress="return soloenteros(event);">
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
                            <!--<div class="card cartafinanza" >
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-8">
                                            <form class="form-inline formnuvcategoria" action="FinanzaIngreso.jsp" method="post">
                                                <h4 class="card-title" id="titulo">Titulo Categoria Financiera</h4>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-8">
                                            Monto Total
                                        </div>
                                        <div class="col-4">
                                            <button class="btn btn-primary " type="submit" name="Eliminar" id="Eliminar" >Eliminar</button>
                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-12">
                                            <form class="form-inline formnuvcategoria" action="FinanzaIngreso.jsp?name=Titulo Categoria Financiera" method="post">
                                                <label>Ingreso</label>
                                                <input id="ingrecanti" name="ingrecanti" type="number" class="form-control "  placeholder="Monto Ingreso" required="">
                                                <input id="ingrerazo" name="ingrerazo" type="text" class="form-control "  placeholder="Razon de ingreso" required="">
                                                <button class="btn btn-primary " type="submit" name="tipo" id="tipo" >Ingresar</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <form class="form-inline formnuvcategoria" action="FinanzaIngreso.jsp" method="post">
                                                <label>Retiro</label>
                                                <input id="retirecanti" name="retirecanti" type="number" class="form-control "  placeholder="Monto Retiro" required="">
                                                <input id="retrerazon" name="retrerazon" type="text" class="form-control "  placeholder="Razon de retiro" required="">
                                                <button class="btn btn-primary " type="submit" id="tipo" name="tipo">Retirar</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-auto">
                                            <button class="btn btn-primary " type="submit" id="consultar" name="consultar">Retirar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>-->
                            <%                                
                                if (sesion.getAttribute("usuario")==null) {
                                    out.println("<script>location.replace('Error404.jsp');</script>");
                                } else {
                                    String usuario = sesion.getAttribute("usuario").toString();
                                    Connection con = null;
                                    //Statement sta = null;
                                    //ResultSet r = null;
                                    int IDCategoriaCuenta;
                                    String NombreCategoria;
                                    double Monto;
                                    //int IDCuenta = 0;
                                    int numero = 0;
                                    Boolean conti = true;
                                    //ArrayList<String> nombres = new ArrayList<String>();
                                    IDCuenta = Integer.parseInt(sesion.getAttribute("cuenta").toString());
                                    //String usuario=sesion.getAttribute("usuario").toString();
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                                        con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                                        sta = con.createStatement();

                                        r = sta.executeQuery("select * from CategoriaCuenta where IDCuenta ='" + IDCuenta + "'");
                                        if (r.next()) {
                                            r = sta.executeQuery("select * from CategoriaCuenta where IDCuenta ='" + IDCuenta + "'");
                                            while (r.next()) {
                                                conti = false;
                                                numero++;
                                                sesion.setAttribute("carta", numero);
                                                IDCategoriaCuenta = r.getInt("IDCategoriaCuenta");
                                                NombreCategoria = r.getString("NombreCategoria");
                                                Monto = r.getDouble("Monto");
                                                IDCuenta = r.getInt("IDCuenta");
                                                //out.println("<div class='card-panel'>");
                                                out.println("<div class='card cartafinanza'>");
                                                out.println("<div class='card-body'>");
                                                out.println("<div class='row'>");
                                                out.println("<div class='col-8'>");
                                                //out.println("<form class='form-inline formnuvcategoria' action='FinanzaIngreso.jsp' method='post'>");
                                                out.println("<h4 class='card-title' id='" + NombreCategoria + "'>" + NombreCategoria + "</h4>");
                                                //out.println("</form>");
                                                //nombres.add(NombreCategoria);
                                                out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='row'>");
                                                out.println("<div class='col-8'>");
                                                out.println("Monto total: " + Monto + "");
                                                out.println("</div>");
                                                out.println("<div class='col-4'>");
                                                out.println("<form class='form-inline formnuvcategoria' action='FinanzaEliminar.jsp?id=" + NombreCategoria + "' method='post'>");
                                                out.println("<button class='btn btn-primary' type='submit' name='Eliminar' id='Eliminar' >Eliminar</button>");
                                                out.println("</form>");
                                                out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='row'>");
                                                out.println("<div class='col-12'>");
                                                out.println("<form class='form-inline formnuvcategoria' action='FinanzaIngreso.jsp?id=" + NombreCategoria + "' method='post'>");
                                                out.println("<label>Ingreso</label>");
                                                out.println("<input id='ingrecanti' name='ingrecanti' type='text' class='form-control'  placeholder='Monto Ingreso' required='' onkeypress='return soloenteros1(event);'>");
                                                out.println("<input id='ingrerazo' name='ingrerazo' type='text' class='form-control'  placeholder='Razon de ingreso' required='' onkeypress='return soloenteros(event);'>");
                                                out.println("<button class='btn btn-primary' type='submit'  name='tipo' id='tipo'>Ingresar</button>");
                                                out.println("</form>");
                                                out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='row'>");
                                                out.println("<div class='col-12'>");
                                                out.println("<form class='form-inline formnuvcategoria' action='FinanzaRetiro.jsp?id=" + NombreCategoria + "' method='post'>");
                                                out.println("<label>Retiro</label>");
                                                out.println("<input id='retirecanti' name='retirecanti' type='text' class='form-control'  placeholder='Monto Retiro' required='' onkeypress='return soloenteros1(event);'>");
                                                out.println("<input id='retrerazon' name='retrerazon' type='text' class='form-control'  placeholder='Razon de retiro' required='' onkeypress='return soloenteros(event);'>");
                                                out.println("<button class='btn btn-primary' type='submit' id='tipo' name='tipo'>Retirar</button>");
                                                out.println("</form>");
                                                out.println("</div>");
                                                out.println("</div>");
                                                out.println("<div class='row'>");
                                                out.println("<div class='col-auto'>");
                                                out.println("<form name='form'>");
                                                out.println("<input type='hidden' name='x'> ");
                                                out.println("<button class='btn btn-primary' type='button' id='" + NombreCategoria + "' name='" + NombreCategoria + "' onclick='Nom(this,this.form)'>Consultar</button>");
                                                out.println("</form>");
                                                out.println("</div>");
                                                out.println("</div>");
                                                out.println("</div>");
                                                out.println("</div>");
                                            }
                                        } else {
                                            out.println("<div class='w3-card-4'>");
                                            out.println("<img src='img/huskyFinanzas.jpg' alt='Norway'  style='width: 60%'>");
                                            out.println("<div class='w3-container w3-center'>");
                                            out.println("<p>Hola, puedes agragar mas categorias</p>");
                                            out.println("</div>");
                                            out.println("</div>");
                                        }

                                        //sesion.setAttribute("titulos",nombres);
                                        r.close();
                                    } catch (SQLException error) {
                                        out.print(error.toString());
                                    }
                                }

                            %>

                        </div>
                    </div>
                </div>
                <div class="col-5">
                    <div class="row barragrafica ">
                        <div class="col-8">
                            <h2 align="left" class="titubarrafinianza">Grafico</h2>
                        </div>

                    </div>
                    <div class="row grafica">
                        <div class="col-12">
                            <canvas id="myChart" width="100%" height="100%"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%            ArrayList<String> nombres = new ArrayList();
            ArrayList<Integer> list = new ArrayList();

            /*try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
                r = sta.executeQuery("select * from CategoriaCuenta where IDCuenta='" + IDCuenta + "';");
                while (r.next()) {
                    nombres.add("'" + r.getString("NombreCategoria") + "'");
                    list.add(r.getInt("Monto"));
                }

            } catch (SQLException error) {
                out.print(error.toString());
            }*/

        %>

        <script type="text/javascript">
            var gastos;

            function Nom(b, form) {
                form.x.value = b.id;
                gastos = "'" + b.id + "'";
                form.submit();
            <%                
                if (sesion.getAttribute("usuario")==null) {
                    out.println("<script>location.replace('Error404.jsp');</script>");
                } else {
                    String memo = "";
                    memo = request.getParameter("x");

                    int cat = 0;
                    try {
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                        sta = c.createStatement();
                        r = sta.executeQuery("select IDCategoriaCuenta from CategoriaCuenta where NombreCategoria='" + memo + "';");
                        while (r.next()) {
                            cat = r.getInt("IDCategoriaCuenta");
                        }

                        r = sta.executeQuery("select * from RegistroFinanza where IDCategoriaCuenta='" + cat + "';");
                        while (r.next()) {
                            nombres.add("'" + r.getString("Accion") + "'");
                            list.add(r.getInt("Monto"));

                        }
                        int holiiii = 0;
                        list.add(holiiii);

                    } catch (SQLException error) {
                        out.print(error.toString());
                    }

                }

            %>

            }
            var canvas = document.getElementById('myChart');

            var data = {
                labels:<%=nombres.toString()%>,
                datasets: [
                    {
                        label: "gastos",
                        backgroundColor: "#0BDEC5  ",
                        borderColor: "#4600FF  ",
                        borderWidth: 2,
                        hoverBackgroundColor: "#09BEE6    ",
                        hoverBorderColor: "#0824EE  ",
                        data: <%=list.toString()%>
                    }
                ]
            };
            var option = {
                animation: {
                    duration: 5000
                }

            };

            var myBarChart = Chart.Bar(canvas, {
                data: data,
                options: option
            });

        </script>
        <script type="text/javascript">

            function soloenteros(e) {
                var keyword;
                if (window.event) {
                    keyword = e.keyCode;//explorer
                } else
                if (e.which) {
                    keyword = e.which;//fire fox / opera
                }
                if ((keyword >= 65 && keyword <= 90) || (keyword >= 97 && keyword <= 122) || (keyword === 8) || (keyword === 32) || (keyword >= 48 && keyword <= 57)) {
                    return true;
                } else
                    return false;
            }
            function soloenteros1(e) {
                var keyword;
                if (window.event) {
                    keyword = e.keyCode;//explorer
                } else
                if (e.which) {
                    keyword = e.which;//fire fox / opera
                }
                if ((keyword === 8) || (keyword >= 48 && keyword <= 57)) {
                    return true;
                } else
                    return false;
            }
        </script>
    </body>
</html>
