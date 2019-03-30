<!-- BREADCRUMB -->
<ul class="breadcrumb">
    <li><a href="index.php?panel=index.php">DiRulo</a></li>
    <li id="showmodal">inventario </li>
</ul>
<!-- FIN BREADCRUMB -->
<div class="col-md-12 col-sm-12">
    <h2><span class="fas fa-edit"></span> Gestionar la existencia de inventario</h2>
</div>
<!--INGREDIENTES RESUMEN-->
<div class="col-md-12 ingredientes_lista">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="panel-title-box">
                <h3>Ingredientes</h3>
                <span>Resumen de inventario</span> <button class="btn btn-info addnew_ing_btn" style="margin-left: 16px;"><i class="fa fa-plus-square"></i> Nuevo</button>
            </div>                                    
            <ul class="panel-controls" style="margin-top: 2px;">
                <li><a id="ingredientes_toggle_list" href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>                                 
            </ul>
        </div>
        <div id="ingredientes_graph_peq" class="panel-body panel-body-table" >
            <div class="table-responsive" >
                <table class="table table-condensed table-bordered table-striped">
                    <thead>
                        <tr>
                            <th width="20%">Producto</th>
                            <th width="10%">Cantidad</th>
                            <th width="10%">Codigo</th>
                            <th width="10%">Precio</th>
                            <th width="10%">Unidad</th>
                            <th width="10%">Estado</th>
                            <th width="20%">Fecha</th>
                            <th width="10%">Tipo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $select_ingredientes_list = "SELECT * FROM ingrediente";
                        $result_ingredientes_list = mysqli_query($conn, $select_ingredientes_list);
                        while ($row_ingredientes_list = mysqli_fetch_array($result_ingredientes_list)) {
                            if ($row_ingredientes_list['cantidad1'] <= 24) {
                                $progbar_color = 'danger';
                            } elseif ($row_ingredientes_list['cantidad1'] >= 25 && $row_ingredientes_list['cantidad1'] <= 49) {
                                $progbar_color = 'warning';
                            } elseif ($row_ingredientes_list['cantidad1'] >= 50 && $row_ingredientes_list['cantidad1'] <= 74) {
                                $progbar_color = 'info';
                            } elseif ($row_ingredientes_list['cantidad1'] >= 75 && $row_ingredientes_list['cantidad1'] <= 100) {
                                $progbar_color = 'success';
                            }
                             if($row_ingredientes_list['estadoIngrediente'] == 1){
                                $labelEstatus = "success";
                                $texto = "DISPONIBLE";
                            }else{
                                $labelEstatus = "danger";
                                $texto = "NO DISPONIBLE";
                            }
                            echo "<tr class='singleing_row'>
                                    <td class='producto text-bold'>" . $row_ingredientes_list['nombreIngrediente'] . "</td>
                                    <td class='cantidad text-bold'><span id=\"ingredientes_" . $row_ingredientes_list['idIngrediente'] . "_val_big\" class=\"label label-" . $progbar_color . "\">" . $row_ingredientes_list['cantidad1'] . " " . $row_ingredientes_list['unidadIngrediente'] . "</span></td>
                                    <td class='codigo text-bold'>" . $row_ingredientes_list['codgoIngrediente'] . "</td>
                                    <td class='precio text-bold'>" . $row_ingredientes_list['precioIngrediente'] . "</td>
                                    <td class='unidad text-bold'>" . $row_ingredientes_list['unidadIngrediente'] . "</td>
                                    <td class='estado text-bold'><span class=\"label label-" . $labelEstatus . "\">" . $texto . "</span></td>
                                    <td class='fecha text-bold'>" . $row_ingredientes_list['fechaIngredinete'] . "</td>
                                    <td class='tipo text-bold'>" . $row_ingredientes_list['tipoIngrediente'] . "</td>
                                    <input type='hidden' value='" . $row_ingredientes_list['idIngrediente'] . "'>
                                </tr>";
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="ingredientes_botonera_small" class="panel-footer text-center">                                                                                                                                                                                                           
            <div class="btn-group">
                <button id="ingredientes_quitosur_btn" class="btn btn-primary">Quito Sur</button>
                <button id="ingredientes_villaflora_btn" class="btn btn-primary">Villaflora</button>                                                
                <button id="ingredientes_quitonorte_btn" class="btn btn-primary">Quito Norte</button>                                        
            </div>     
        </div>    
        <div id="ingredientes_botonera_big" class="panel-footer text-center" style="display: none;">                                                                                                                                                                                                           
            <div class="btn-group">
                <button id="ingredientes_quitosur_btn_big" class="btn btn-primary">Quito Sur</button>
                <button id="ingredientes_villaflora_btn_big" class="btn btn-primary">Villaflora</button>                                                
                <button id="ingredientes_quitonorte_btn_big" class="btn btn-primary">Quito Norte</button>                                        
            </div>     
        </div>    
    </div>
</div>
<!--FIN INGREDIENTES RESUMEN-->

<!-- AGREGAR INGREDIENTE -->
<div class="col-md-8 agregarnuevo_panel" style="display:none;">
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="col-md-12">
                <h3 class="col-md-3"><i class="fa fa-plus-circle"></i> Nuevo ingrediente</h3>
            </div>
            <form role="form" method="post" id="guardarIngrediente" name="guardarIngrediente">
                <div class="form-group col-md-4">
                    <label class="control-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre del ingrediente">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Cantidad</label>
                    <input type="text" class="form-control" id="cantidad" name="cantidad" placeholder="Cantidad a modificar">
                </div>                                     
                <div class="form-group col-md-4">
                    <label class="control-label">C&oacute;digo</label>
                    <input type="text" class="form-control" id="codigo" name="codigo" placeholder="Identifcador ">
                </div>                                     
                <div class="form-group col-md-4">
                    <label class="control-label">Precio</label>
                    <input type="text" class="form-control" id="precio" name="precio" placeholder="Ingrese el Precio">
                </div>                                     
                <div class="form-group col-md-4">
                    <label class="control-label">Unidad</label>
                    <input type="text" class="form-control" id="unidad" name="unidad" placeholder="Unidad de medida">
                </div>                                                                         
                <div class="form-group col-md-4">
                    <label class="control-label">Fecha</label>
                    <input type="text" class="form-control" id="fecha" name="fecha" placeholder="Fecha de Ingreso">
                </div>                                     
                <div class="form-group col-md-4">
                    <label class="control-label">Tipo de Ingrediente</label>
                    <input type="text" class="form-control" id="tipo" name="tipo" placeholder="Seleccione el grupo del menu">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Estado</label>
                    <div class="col-md-12">
                        <label class="switch">
                            <input type="checkbox" class="switch" id="estado" name="estado" value="1" checked="">
                            <span></span>
                        </label>     
                    </div>                                         
                </div>
            </form>
        </div>
        <div class="panel-footer">
            <button class="btn btn-info goback_ing_btn" style="margin-left: 16px; margin-bottom: 16px;"><i class="fa fa-reply"></i> Regresar</button>

            <button class="btn btn-success savenew_btn pull-right" style="margin-left: 16px; margin-bottom: 16px;"><i class="fa fa-save"></i> Guardar</button>
        </div>
    </div>
</div>
<!--FIN AGREGAR INGREDIENTE -->

<!-- EDITAR INGREDIENTE -->
<div class="col-md-8 editing_panel" style="display:none;">
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="col-md-12">
                <h3 class="col-md-3"><i class="fa fa-edit"></i> Editar ingrediente</h3>
            </div>
            <form role="form" method="post" id="editarIngrediente" name="editarIngrediente">
                <div class="form-group col-md-4">
                    <label class="control-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre del ingrediente">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Cantidad</label>
                    <input type="text" class="form-control" id="cantidad" name="cantidad" placeholder="Cantidad a modificar">
                </div>                                     
                <div class="form-group col-md-4">
                    <label class="control-label">C&oacute;digo</label>
                    <input type="text" class="form-control" id="codigo" name="codigo" placeholder="Identifcador ">
                </div>                                     
                <div class="form-group col-md-4">
                    <label class="control-label">Precio</label>
                    <input type="text" class="form-control" id="precio" name="precio" placeholder="Ingrese el Precio">
                </div>                                     
                <div class="form-group col-md-4">
                    <label class="control-label">Unidad</label>
                    <input type="text" class="form-control" id="unidad" name="unidad" placeholder="Unidad de medida">
                </div>                                                                         
                <div class="form-group col-md-4">
                    <label class="control-label">Fecha</label>
                    <input type="text" class="form-control" id="fecha" name="fecha" placeholder="Fecha de Ingreso">
                </div>                                     
                <div class="form-group col-md-4">
                    <label class="control-label">Tipo de Ingrediente</label>
                    <input type="text" class="form-control" id="tipo" name="tipo" placeholder="Seleccione el grupo del menu">
                </div>
                <div class="form-group col-md-4">
                    <label class="control-label">Estado</label>
                    <div class="col-md-12">
                        <label class="switch">
                            <input type="checkbox" class="switch" id="estado" name="estado" value="1" checked="">
                            <span></span>
                        </label>     
                    </div>                                         
                </div>
            </form>
        </div>
        <div class="panel-footer">
            <button class="btn btn-info goback_ing_btn" style="margin-left: 16px; margin-bottom: 16px;"><i class="fa fa-reply"></i> Regresar</button>
            <button class="btn btn-success savenew_btn pull-right" style="margin-left: 16px; margin-bottom: 16px;"><i class="fas fa-sync-alt"></i> Actualizar</button>
        </div>
    </div>
</div>
<!--FIN EDITAR INGREDIENTE -->