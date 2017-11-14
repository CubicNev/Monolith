<%-- 
    Document   : Chat
    Created on : 7/11/2017, 12:16:26 PM
    Author     : Alumno
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Css/Chat.css" rel="stylesheet" type="text/css">
        <link href="Css/bootstrap.css" rel="stylesheet" type="text/css">
        <script src="js/jquery-3.2.1.min.js"></script> 
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <title>JSP Page</title>
        <script>
            
          var cont = 0;
            function contador() {
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function () {

                    document.getElementById("ventanaMensaje").innerHTML = xmlhttp.responseText;
                }
                xmlhttp.open('Post', 'ActualizarChat', true);
                xmlhttp.send();
                cont++;
            }

               
            function mensaje(){
                var men=document.getElementById("btn-input").value;
                var xmlhttp=new XMLHttpRequest();
                 xmlhttp.open('Post',"IngresarMensaje?q="+men,true);
                 xmlhttp.send();
                document.getElementById("btn-input").value="";
            }
            
            setInterval('contador()', 4000);

            
            
           
        </script>
        <script>
             $(document).ready(
                function(){
                    $('.panel-body').sticky()({
			speed: 0 // The scroll animation speed
		});
                }
            );
        </script>
    </head>
    <body onLoad="contador();">
        <div class="container">
            <div class="row" >
                <div class="col-md-12" >
                    <div class="panel panel-primary">
                        
                        <div class="panel-body" style="height:420px;">
                            <ul class="chat" id='ventanaMensaje'>
                                
                            </ul>
                        </div>
                        <div class="panel-footer" >
                            <form>
                            <div class="input-group">
                                <input id="btn-input" type="text" id="Mensaje" name='Mensaje' class="form-control input-sm" placeholder="Type your message here..." />
                                <span class="input-group-btn">
                                    <button class="btn btn-warning btn-sm"  id="btn-chat" onclick="mensaje();">
                                        Send</button>
                                </span>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
