<?php
/*
 *          ***********************************************************
 *          *******************||  DROOM SOFTWARE   ||*****************
 *          ***********************************************************
 * 
 *          @date               2019-03-22
 *          @author             Bayman Burton <bayman@burtonservers.com>
 *          @copyright          2015-2019 Burton Tech
 *          @license            https://www.gnu.org/licenses/gpl-3.0.en.html GNU General Public License (GPL v3)
 *          International Registered Trademark & Property of Burton Technology  https://burtonservers.com
 * 
 *          This source file is subject to the GNU General Public License (GPL v3)
 *          that is bundled with this package in the file LICENSE.txt.
 *          It is also available through the world-wide-web at this URL:
 *          https://www.gnu.org/licenses/gpl-3.0.en.html
 *          If you did not receive a copy of the license and are unable to
 *          obtain it through the world-wide-web, please send an email
 *          to dev@burtonservers.com so we can send you a copy immediately.
 *          This software is built and distributed by Burton Technology https://burtonservers.com
 *          By using this software you are Aware it is strictly prohibited its comercial distribution or 
 *          modification of any aspect of the aplication
 *
 *          Desc:
 *          Integrated Restaurant Management Software.
 *          Focused on handling the full operation of the restaurant, including support for multi
 *          restaurants, kitchen control, teller management and Waiter module for wireless order submitting
 *          also comes with an Admin Dashboard and custom reports.
 * 
 *          WARNING
 *          Please do not edit this file or the aplication could stop working as intended, also
 *          any modifications will be overwritten by newer versions in the future
 *          
 */
?>
<!-- BREADCRUMB -->
<ul class="breadcrumb">
    <li><a href="/?show=home"><?php echo $_SESSION["usuario"]['nombreEstablecimiento']; ?></a></li>
    <li>Pedidos </li>
    <li>Editar Mesas </li>
</ul>
<!-- FIN BREADCRUMB -->
<div class="page-content-wrap">   
    <div class="row customalert hidethis">
        <div class="col-md-12">
            <div class="widget widget-primary widget-item-icon">
                <div class="widget-item-left">
                    <span class="fa fa-exclamation"></span>
                </div>
                <div class="widget-data">
                    <div class="widget-title">Notificación</div>
                    <div class="widget-subtitle">
                        <div role="alert" class="customalert_text">
                            Mensaje de error
                        </div>
                    </div>
                </div>
                <div class="widget-controls">                                
                    <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip" data-placement="top" title="Remove Widget"><span class="fa fa-times"></span></a>
                </div>                             
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="col-md-6">
                        <h2><i class="fas fa-cogs"></i> Opciones</h2>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="col-md-4 addnewbtn">                        
                        <a href="#" class="tile tile-info tile-valign "><span class="fa fa-plus-square"></span></a>                        
                    </div> 
                    <div class="col-md-4 showlistbtn hidethis">                        
                        <a href="#" class="tile tile-info tile-valign "><i class="fa fa-arrow-circle-left" aria-hidden="true"></i></a>                        
                    </div> 
                    <div class="col-md-4 newjob hidethis savenewjob">                        
                        <a href="#" class="tile tile-success tile-valign "><span class="fa fa-save"></span><img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;width: 100%;" /></a>                        
                    </div> 
                    <div class="col-md-4 editjob hidethis deletejob">                        
                        <a href="#" class="tile tile-danger tile-valign "><span class="fa fa-times"></span><img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;width: 100%;" /></a>                        
                    </div> 
                </div>
            </div>
        </div>
        <div class="col-md-4 editarImagenFondo">
            <div class="panel panel-default">     
                <div class="panel-heading">
                    <h3>
                        <span class="fa fa-picture-o"></span> 
                        Cambiar imagen de Fondo 
                        <span data-toggle="tooltip" data-placement="top" title="800px * 450px" class=" fa fa-exclamation-circle"></span>
                        <ul class="panel-controls">
                            <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                            <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                        </ul>   
                    </h3> 
                </div>                       
                <div class="panel-body panel-body-image">
                    <img src="api/assets/img/tableitem.jpg" alt="Logo"/>
                    <a href="#" class="panel-body-inform">
                        <i class="fas fa-image" style="transform: rotate(-45deg);"></i>
                    </a>
                </div>
                <div class="panel-body">                                   
                    <input  class="fileinput btn-info" type="file" name="uploadnewcustomImg" id="uploadnewcustomImg" data-filename-placement="inside" title="Buscar Imagen">
                    <hr />
                    <button class="pull-right btn btn-success" name="uploadnewcustomImgbtn"  type="submit"  id="uploadnewcustomImgbtn" data-toggle="tooltip" data-placement="right" title="Imagen del producto">
                        <span class="beforeLoad" ><span class="fa fa-upload"></span> Cambiar imagen </span>
                        <img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;" />
                    </button>
                </div>
            </div>
        </div>
    </div>


    <?php //**VENTANA DE LISTADO DE PRODUCTOS ?>
    <div class="row joblist">
        <!--PROYECTOS SE MUESTRNA DE MANERA DINAMICA-->
    </div>

    <?php //**VENTANA DE EDITAR PROYECTO ?>
    <div class="row editjob hidethis ">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="col-md-6">
                        <h2><span class="fa fa-edit"></span> Editar Producto</h2>
                    </div>
                    <div class="col-md-6">
                        <label class="switch pull-right editProdCheck">
                        </label>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="row pushaway16">
                                <div class="col-md-6">
                                    <h4>Nombre de Producto:</h4>
                                    <input name="nombreProductoInput" id="nombreProductoInput" type="text" class="form-control" value="" placeholder="Ingresa el texto" />   
                                </div>
                                <div class="col-md-6">
                                    <h4>Descripción:</h4>
                                    <input name="descProdcutoInput" id="descProdcutoInput" type="text" class="form-control" value="" placeholder="Ingresa el texto" />   
                                </div>
                                <div class="col-md-12 pushtop_16">
                                    <label class="col-md-3 control-label">Menu</label>
                                    <div class="col-md-9 fullMenuLisCont">          
                                    </div>
                                </div>   
                                <hr />
                                <div class="col-md-3 pushtop_16">
                                    <h4>CODIGO:</h4>
                                    <input name="skuProductoInput" id="skuProductoInput" type="text" class="form-control" value="" placeholder="Ingresa el texto" />   
                                </div>
                                <div class="col-md-3 pushtop_16">
                                    <h4>Precio:</h4>
                                    <input name="precioProductoInput" id="precioProductoInput" type="text" class="form-control" value="" placeholder="Ingresa el texto" />   
                                </div>
                                <div class="col-md-6 pushtop_16">
                                    <h4>Variaciones:</h4>
                                    <input name="varsPrducEdit" placeholder="Separados por coma" id="varsPrducEdit" type="text" class="tagsinput" value="Regular"/>
                                </div>
                            </div>  
                            <div class="col-md-12 pushtop_32">
                                <label class="col-md-3 control-label">Receta</label>
                                <div class="col-md-7">
                                    <input name="recetaTagsNames" placeholder="" id="recetaTagsNames" type="text" class="tagsinput" value="Ing1,Ing2,Ing3"/>
                                    <input name="recetaTagsIds" placeholder="" id="recetaTagsIds" type="hidden" value="1,2,3"/>
                                </div>                                        
                                <div class="col-md-2">
                                    <button class="pull-right btn btn-success" id="addNewIngBtn" data-toggle="tooltip" data-placement="right" title="Agregar Ingrediente">
                                        <span class="beforeLoad" ><span class="fa fa-plus"></span></span>
                                        <img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;" />
                                    </button>
                                </div>                                        
                            </div>
                            <div class="col-md-12 pushtop_16 hidethis ingFullListCont">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Ingredientes</label>
                                    <div class="col-md-7 fullIngListCont">                                                                                

                                    </div>                                  
                                    <div class="col-md-2">
                                        <button class="pull-right btn btn-success addThisIngBtn" data-toggle="tooltip" data-placement="right" title="Incluir en Receta">
                                            <span class="beforeLoad" ><span class="fa fa-check"></span></span>
                                            <img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;" />
                                        </button>
                                    </div> 
                                </div>
                            </div>
                            <div class="hidethis_force" id="editIdProdCont"></div>
                        </div>
                        <div class="col-md-4">
                            <h4>
                                Imagen de Cabecera: 
                                <span data-toggle="tooltip" data-placement="top" title="800px * 800px" class="pull-right fa fa-exclamation-circle"></span></h4>
                            <div class="block push-up-10 headerimage">
                                <img src="api/assets/img/productos/1.jpg" style="width: 100%;" />
                            </div>
                            <div class="col-md-12 hidethis uploadheader">
                                <div class="panel panel-default">
                                    <div class="panel-body">                                   
                                        <input name="newheaderimgPort" type="file" id="newheaderimgPort"/>
                                        <button class="pull-right btn btn-success" name="newheaderimgPortbtn"  type="button"  id="newheaderimgPortbtn" data-toggle="tooltip" data-placement="right" title="Cambiar Imagen de Cabecera">
                                            <span class="beforeLoad" ><span class="fa fa-upload"></span> Subir </span>
                                            <img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;" />
                                        </button>
                                    </div>
                                </div>
                            </div>  
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 savechanges_btn pushtop_16 pull-right">                        
                            <a href="#" class="tile tile-success tile-valign ">
                                <span class="fa fa-save"></span>
                                <img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;width: 100%;" />
                            </a>                        
                        </div> 
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 ">
            <div class="panel panel-default tamPanel">
                <div class="panel-heading">
                    <div class="col-md-6">
                        <h2><span class="fa fa-edit"></span> Tamaños</h2>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12 pushtop_16">
                            <div class="col-md-12 tamsListcont">
                                <div class="widget widget-primary widget-item-icon">
                                    <div class="widget-item-left">
                                        <span class="fa fa-save" data-toggle="tooltip" data-placement="right" title="Actualizar"></span>
                                    </div>
                                    <div class="widget-data">
                                        <div class="widget-int num-count">Impacto</div>
                                        <div class="widget-title">Nombre</div>
                                        <div class="widget-subtitle col-md-3"><input type="text" class="form-control" value="" placeholder="Actualizar" /></div>
                                    </div>                           
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php //**VENTANA DE AGREGAR NUEVO PROYECTO ?>
    <div class="row newjob hidethis ">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="col-md-6">
                        <h2><span class="fa fa-plus"></span> Agregar Nuevo Producto</h2>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="row pushaway16">
                                <div class="col-md-6">
                                    <h4>Nombre de Producto:</h4>
                                    <input name="nombreProductoInputNew" id="nombreProductoInputNew" type="text" class="form-control" value="" placeholder="Ingresa el texto" />   
                                </div>
                                <div class="col-md-6">
                                    <h4>Descripción:</h4>
                                    <input name="descProdcutoInputNew" id="descProdcutoInputNew" type="text" class="form-control" value="" placeholder="Ingresa el texto" />   
                                </div>
                                <div class="col-md-12 pushtop_16">
                                    <label class="col-md-3 control-label">Menu</label>
                                    <div class="col-md-9 fullMenuLisContNew">          
                                    </div>
                                </div>   
                                <hr />
                                <div class="col-md-3 pushtop_16">
                                    <h4>CODIGO:</h4>
                                    <input name="skuProductoInputNew" id="skuProductoInputNew" type="text" class="form-control" value="" placeholder="Ingresa el texto" />   
                                </div>
                                <div class="col-md-3 pushtop_16">
                                    <h4>Precio:</h4>
                                    <input name="precioProductoInputNew" id="precioProductoInputNew" type="text" class="form-control" value="" placeholder="Ingresa el texto" />   
                                </div>
                                <div class="col-md-6 pushtop_16">
                                    <h4>Variaciones:</h4>
                                    <input name="varsPrducEditNew" placeholder="Separados por coma" id="varsPrducEditNew" type="text" class="tagsinput" value="Regular"/>
                                </div>
                            </div>  
                            <div class="col-md-12 pushtop_32">
                                <label class="col-md-3 control-label">Receta</label>
                                <div class="col-md-7">
                                    <input name="recetaTagsNamesNew" placeholder="" id="recetaTagsNamesNew" type="text" class="tagsinput" value=""/>
                                    <input name="recetaTagsIdsNew" placeholder="" id="recetaTagsIdsNew" type="hidden" value="1,2,3"/>
                                </div>                                        
                                <div class="col-md-2">
                                    <button class="pull-right btn btn-success" id="addNewIngBtnNew" data-toggle="tooltip" data-placement="right" title="Agregar Ingrediente">
                                        <span class="beforeLoad" ><span class="fa fa-plus"></span></span>
                                        <img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;" />
                                    </button>
                                </div>                                        
                            </div>
                            <div class="col-md-12 pushtop_16 hidethis ingFullListContNew">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Ingredientes</label>
                                    <div class="col-md-7 fullIngListContNew">                                                                                

                                    </div>                                  
                                    <div class="col-md-2">
                                        <button class="pull-right btn btn-success addThisIngBtnNew" data-toggle="tooltip" data-placement="right" title="Incluir en Receta">
                                            <span class="beforeLoad" ><span class="fa fa-check"></span></span>
                                            <img class="loading_img" src="assets/img/loadingbar.gif" width="80" style="display: none;" />
                                        </button>
                                    </div> 
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <h4>
                                Imagen de Cabecera: 
                                <span data-toggle="tooltip" data-placement="top" title="800px * 800px" class="pull-right fa fa-exclamation-circle"></span></h4>
                            <div class="block push-up-10 headerimageNew">
                                <img src="api/assets/img/productos/default.jpg" style="width: 100%;" />
                            </div>
                            <div class="col-md-12 hidethis uploadheaderNew">
                                <div class="panel panel-default">
                                    <div class="panel-body">                                   
                                        <input name="newheaderimgPortNew" type="file" id="newheaderimgPortNew"/>
                                    </div>
                                </div>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>