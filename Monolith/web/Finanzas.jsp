<%-- 
    Document   : Finanzas
    Created on : 18/10/2017, 10:53:56 PM
    Author     : memo0
--%>
<%@page import="Funcionfianan.conectar"%>
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
            HttpSession sesion = request.getSession();
            String usuario=sesion.getAttribute("usuario").toString();
            Connection c = null;
            Statement sta = null;
            ResultSet r = null;
            int num=0;
            int monto=0;
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                sta = c.createStatement();
                r=sta.executeQuery("select IDUsuario from Usuario where NombreUsuario='"+usuario+"';");
                while(r.next()){
                    num=r.getInt("IDUsuario");
                    sesion.setAttribute("idusario", num);
                    
                }
                r=sta.executeQuery("select * from Cuenta where IDusuario='"+num+"'");
                while(!(r.next())){
                    sta.executeUpdate("insert into Cuenta(IDusuario,MotoTotal) values('"+num+"','"+monto+"');");
                }
               
            } catch (SQLException error) {
                //out.print(error.toString());
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

                            <form class="form" action="Finanzaconect.jsp" method="post">
                                <div class="row formcategorias">
                                    <div class="col-7">
                                        <input class="form-control" id="titulo" name="titulo" placeholder="Nueva Categoria" required="">
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
                                            <form class="form-inline formnuvcategoria" action="FinanzaIngreso.jsp" method="post">
                                                <label>Ingreso</label>
                                                <input id="ingrecanti" name="ingrecanti" type="number" class="form-control "  placeholder="Monto Ingreso" required="">
                                                <input id="ingrerazo" name="ingrerazo" type="text" class="form-control "  placeholder="Razon de ingreso" required="">
                                                <button class="btn btn-primary " type="submit" name="tipo" id="tipo">Ingresar</button>
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
                                </div>
                            </div> 
                            <%
                                Connection con = null;
                                //Statement sta = null;
                                //ResultSet r = null;
                                int IDCategoriaCuenta;
                                String NombreCategoria;
                                double Monto;
                                int IDCuenta=0;
                                int numero=0;
                                //HttpSession sesion = request.getSession();
                                //String usuario=sesion.getAttribute("usuario").toString();
                                try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/monolith", "root", "n0m3l0");
                                    sta = con.createStatement();
                                    r=sta.executeQuery("select IDCuenta from Cuenta where IDusuario='"+num+"'");
                                    while(r.next()){
                                        IDCuenta=r.getInt("IDCuenta");
                                    }
                                    r = sta.executeQuery("select * from CategoriaCuenta where IDCuenta ='"+IDCuenta+"'");
                                    while (r.next()) {
                                        //numero++;
                                        IDCategoriaCuenta = r.getInt("IDCategoriaCuenta");
                                        NombreCategoria = r.getString("NombreCategoria");
                                        Monto = r.getDouble("Monto");
                                        IDCuenta = r.getInt("IDCuenta");
                                        //out.println("<div class='card-panel'>");
                                        out.println("<div class='card cartafinanza'>");
                                        out.println("<div class='card-body'>");
                                        out.println("<div class='row'>");
                                        out.println("<div class='col-8'>");
                                        out.println("<h4 class='card-title'>" + NombreCategoria + "</h4>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("<div class='row'>");
                                        out.println("<div class='col-8'>");
                                        out.println("Monto total: "+ Monto + "");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("<div class='row'>");
                                        out.println("<div class='col-12'>");
                                        out.println("<form class='form-inline formnuvcategoria'>");
                                        out.println("<label>Ingreso</label>");
                                        out.println("<input id='ingrecanti' name='ingrecanti' type='number' class='form-control'  placeholder='Monto Ingreso' required=''>");
                                        out.println("<input id='ingrerazo' name='ingrerazo' type='text' class='form-control'  placeholder='Razon de ingreso' required=''>");
                                        out.println("<button class='btn btn-primary' type='submit'  name='tipo' id='tipo'>Ingresar</button>");
                                        out.println("</form>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("<div class='row'>");
                                        out.println("<div class='col-12'>");
                                        out.println("<form class='form-inline formnuvcategoria'>");
                                        out.println("<label>Retiro</label>");
                                        out.println("<input id='retirecanti' name='retirecanti' type='number' class='form-control'  placeholder='Monto Retiro' required=''>");
                                        out.println("<input id='retrerazon' name='retrerazon' type='text' class='form-control'  placeholder='Razon de retiro' required=''>");
                                        out.println("<button class='btn btn-primary' type='submit' id='tipo' name='tipo'>Retirar</button>");
                                        out.println("</form>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("</div>");
                                        out.println("</div>");
                                    }
                                    r.close();
                                } catch (SQLException error) {
                                    out.print(error.toString());
                                }
                            %>

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
