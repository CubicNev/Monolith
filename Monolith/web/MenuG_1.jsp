<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Menu General</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="Css/test1.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstraplogin.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Mukta" rel="stylesheet">
        <link rel="stylesheet" href="Css/Menu_1.css">
    </head>
    <body class="container-fluid">
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
            <div class="primero">
                <div  id="Reloj" class="clock" >
                    <script type="text/javascript">

                        function Mostrar() {
                            var date = new Date();
                            var h = date.getHours(); // 0 - 23
                            var m = date.getMinutes(); // 0 - 59
                            var s = date.getSeconds(); // 0 - 59
                            h = (h < 10) ? "0" + h : h;
                            m = (m < 10) ? "0" + m : m;
                            s = (s < 10) ? "0" + s : s;

                            var time = h + ":" + m + ":" + s + " ";
                            document.getElementById("Reloj").innerText = time;
                            document.getElementById("Reloj").textContent = time;

                            setTimeout(Mostrar, 1000);
                        }

                        Mostrar();

                    </script>
                </div>
            </div>
            <div class="segundo" >
                <div class="calendar">
                    <script>
         
                         
                           
            var dt = new Date();
            
// Display the month, day, and year. getMonth() returns a 0-based number.
/*var dias =[Domingo,Lunes,Martes,Miercoles,Jueves];
*/
var month = dt.getMonth()+1;

var day = dt.getDate();
var year = dt.getFullYear();
switch(month){
    case 1:
        document.write(  'Enero -' + day + '-' + year);
        break;
        case 2:
        document.write(  'Febrero -' + day + '-' + year);
        break;
        case 3:
        document.write(  'Marzo -' + day + '-' + year);
        break;
        case 4:
        document.write(  'Abril-' + day + '-' + year);
        break;
        case 5:
        document.write(  'Mayo -' + day + '-' + year);
        break;
        case 6:
        document.write(  'Junio -' + day + '-' + year);
        break;
        case 7:
        document.write(  'Julio -' + day + '-' + year);
        break;
        case 8:
        document.write(  'Agosto -' + day + '-' + year);
        break;
        case 9:
        document.write(  'Septiembre -' + day + '-' + year);
        break;
        case 10:
        document.write(  'Octubre -' + day + '-' + year);
        break;
        case 11:
        document.write(  'Noviembre -' + day + '-' + year);
        break;
        case 12:
        document.write(  'Diciembre -' + day + '-' + year);
        break;
        Default:
                document.write('Muerte y sufrimiento');
                break;
}

        </script>
                </div>   
            </div>
            <div class="tercero">

            </div>
            <div class="cuarto">

            </div>

        </div>
    </body>

</html>

