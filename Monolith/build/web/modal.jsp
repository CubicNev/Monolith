<%-- 
    Document   : modal
    Created on : 7/11/2017, 07:27:05 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                            
                            <input type="text" class="form-control" id="recipient-name" name="Titulo" placeholder="Nombre Actividad" value="">
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
