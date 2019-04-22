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
<script>
//        $(".customalert_text").html("awdawdawdawd");
//        $(".customalert").animate({width: 'toggle'}, 600);

    //       ACTIVAMOS EL MENU LATERAL       //
    $(".menuItem").removeClass("active");
    $(".newpedido").addClass("active");

    $(document).ready(function () {
        updateProductos();

        $("#newheaderimgPort,#newheaderimgPortNew").fileinput({
            showUpload: false,
            showCaption: false,
            browseClass: "btn btn-info",
            fileType: "jpg"
        });
        var formData = new FormData();
        formData.append('meth', 'getMenuFullTableNew');
        $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
            success: function (data) {
                $('.fullMenuLisContNew').html(data.echo);
                $('select').selectpicker('refresh');
            },
            error: function (error) {
                $(self).find("span, img").toggle("slow");
                console.log("Hubo un error de internet, intente de nuevo");
                console.log(error);
            }
        });
    });

    $(document).on("click", ".headerimage", function (event) {
        event.preventDefault();
        $.when(
                $(".headerimage").slideUp("slow")
                ).then(function () {
            $(".uploadheader").slideDown("slow");
        });
    });

    $(document).on("click", ".headerimageNew", function (event) {
        event.preventDefault();
        $.when(
                $(".headerimageNew").slideUp("slow")
                ).then(function () {
            $(".uploadheaderNew").slideDown("slow");
        });
    });

    $(document).on("click", "#addNewIngBtn", function (event) {
        var formData = new FormData();
        formData.append('meth', 'getIngFullTable');
        $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
            success: function (data) {
                $('.fullIngListCont').html(data.echo);
                $('select').selectpicker('refresh');
            },
            error: function (error) {
                $(self).find("span, img").toggle("slow");
                console.log("Hubo un error de internet, intente de nuevo");
                console.log(error);
            }
        });
        $(".ingFullListCont").slideDown("slow");
    });

    $(document).on("click", "#addNewIngBtnNew", function (event) {
        var formData = new FormData();
        formData.append('meth', 'getIngFullTableNew');
        $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
            success: function (data) {
                $('.fullIngListContNew').html(data.echo);
                $('select').selectpicker('refresh');
                console.log(data);
            },
            error: function (error) {
                $(self).find("span, img").toggle("slow");
                console.log("Hubo un error de internet, intente de nuevo");
                console.log(error);
            }
        });
        $(".ingFullListContNew").slideDown("slow");
    });

    $(document).on("click", ".addThisIngBtn", function (event) {
        var ingAddName = $(document).find('.fullIngListCont button  span.filter-option').html(),
                ingAddId = $(document).find('.ingFullListSelect').val(),
                namesReceta = $(document).find('#recetaTagsNames').val(),
                idsReceta = $(document).find('#recetaTagsIds').val(),
                newRecetaNames = '',
                newRecetaIds = '';

        newRecetaNames = namesReceta + ',' + ingAddName;
        newRecetaIds = idsReceta + ',' + ingAddId;
        $("#recetaTagsNames").importTags(newRecetaNames);
        $("#recetaTagsIds").val(newRecetaIds);


        console.log($(document).find('#recetaTagsNames').val());
        console.log($(document).find('#recetaTagsIds').val());
    });

    $(document).on("click", ".addThisIngBtnNew", function (event) {
        var ingAddName = $(document).find('.fullIngListContNew button  span.filter-option').html(),
                ingAddId = $(document).find('.ingFullListSelectNew').val(),
                namesReceta = $(document).find('#recetaTagsNamesNew').val(),
                idsReceta = $(document).find('#recetaTagsIdsNew').val(),
                newRecetaNames = '',
                newRecetaIds = '';

        newRecetaNames = namesReceta + ',' + ingAddName;
        newRecetaIds = idsReceta + ',' + ingAddId;
        $("#recetaTagsNamesNew").importTags(newRecetaNames);
        $("#recetaTagsIdsNew").val(newRecetaIds);


        console.log($(document).find('#recetaTagsNamesNew').val());
        console.log($(document).find('#recetaTagsIdsNew').val());
    });

    $(document).on("click", "#uploadnewcustomImgbtn", function (event) {
        event.preventDefault();
        var btnself = this;
        $.when(
                $(btnself).find(".beforeLoad,.loading_img").toggle())
                .then(function () {
                    setTimeout(function () {
                        if ($('#uploadnewcustomImg').get(0).files.length > 0) {
                            var formData = new FormData();
                            formData.append('meth', 'newimgcustom');
                            formData.append('imgcustom', $('#uploadnewcustomImg').get(0).files[0]);
                            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                                success: function (data) {
                                    if (data.status == 'yes') {
                                        $(".customalert_text").html("Imagen actualizada exitosamente");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        $(btnself).find(".beforeLoad,.loading_img").toggle();
                                    } else {
                                        $(self).find("span, img").toggle("slow");
                                        $(".customalert_text").html("No pudimos cambiar la imagen, intente de nuevo");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        console.log(data);
                                    }
                                },
                                error: function (error) {
                                    console.log("Hubo un error de internet, intente de nuevo");
                                    console.log(error);
                                }
                            });
                        } else {
                            $(btnself).find(".beforeLoad,.loading_img").toggle();
                            $(".customalert_text").html('Debes seleccionar una imagen primero');
                            $(".customalert").animate({width: 'toggle'}, 600);
                        }
                    }, 1000);
                });
    });

    $(document).on("click", "#newheaderimgPortbtn", function (event) {
        event.preventDefault();
        var btnself = this;
        $.when(
                $(btnself).find(".beforeLoad,.loading_img").toggle("slow"))
                .then(function () {
                    setTimeout(function () {
                        if ($('#newheaderimgPort').get(0).files.length > 0) {
                            var formData = new FormData();
                            formData.append('meth', 'newimgheaderPort');
                            formData.append('imgheaderPort', $('#newheaderimgPort').get(0).files[0]);
                            formData.append('idProducto', $('#editIdProdCont').html());
                            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                                success: function (data) {
                                    if (data.status == 'yes') {
                                        $(".customalert_text").html("Imagen actualizada exitosamente");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        $(btnself).find(".beforeLoad,.loading_img").toggle();
                                    } else {
                                        $(self).find("span, img").toggle("slow");
                                        $(".customalert_text").html("No pudimos cambiar la imagen, intente de nuevo");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        console.log(data);
                                    }
                                },
                                error: function (error) {
                                    console.log("Hubo un error de internet, intente de nuevo");
                                    console.log(error);
                                }
                            });
                        } else {
                            $(btnself).find(".beforeLoad,.loading_img").toggle("slow");
                            $(".customalert_text").html('Debes seleccionar una imagen primero');
                            $(".customalert").animate({width: 'toggle'}, 600);
                        }
                    }, 1000);
                });
    });

    $(document).on("click", ".editarProductoBtn", function (event) {
        event.preventDefault();
        var self,
                idProducto = $(this).parent().parent().find(".idProducto").html(),
                idMenu = $(this).parent().parent().find(".idMenu").html(),
                nombreProducto = $(this).parent().parent().find(".nombreProducto").html(),
                descProducto = $(this).parent().parent().find(".descProducto").html(),
                precioProducto = $(this).parent().parent().find(".precioProducto").html(),
                skuProducto = $(this).parent().parent().find(".skuProducto").html(),
                varsProducto = $(this).parent().parent().find(".varsProducto").html(),
                ingsProducto = $(this).parent().parent().find(".ingsProducto").html(),
                estadoProducto = $(this).parent().parent().find(".estadoProducto").html(),
                tamProducto = $(this).parent().parent().find(".tamProducto").html();
        self = this;

        $.when(
                $(self).find(".beforeLoad, .loading_img").toggle("slow"))
                .then(function () {
                    if (estadoProducto == 'ACTIVO') {
                        $(".editProdCheck").html('<input type="checkbox" class="switch" name=""  value="1" checked="checked" /><span></span>');
                    } else {
                        $(".editProdCheck").html('<input type="checkbox" class="switch" name=""  value="0" /><span></span>');
                    }
                    $("#editIdProdCont").html(idProducto);
                    var formData = new FormData();
                    formData.append('meth', 'getMenuFullTable');
                    formData.append('idMenu', idMenu);
                    $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                        success: function (data) {
                            $('.fullMenuLisCont').html(data.echo);
                            $('select').selectpicker('refresh');
                        },
                        error: function (error) {
                            $(self).find("span, img").toggle("slow");
                            console.log("Hubo un error de internet, intente de nuevo");
                            console.log(error);
                        }
                    });
                    $("#nombreProductoInput").val(nombreProducto);
                    $("#descProdcutoInput").val(descProducto);
                    $("#skuProductoInput").val(skuProducto);
                    $("#precioProductoInput").val(precioProducto);
                    $("#varsPrducEdit").importTags(varsProducto);
                    $("#recetaTagsIds").val(ingsProducto);
                    var formData = new FormData();
                    formData.append('meth', 'getIngFullTable');
                    $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                        success: function (data) {
                            var idsIng = ingsProducto.split(','), names = [];
                            $.each(idsIng, function (i, n) {
                                $.each(data.ings, function (ii, nn) {
                                    if (nn.idIngrediente == n) {
                                        names.push(nn.nombreIngrediente);
                                    }
                                });
                            });
                            $("#recetaTagsNames").importTags(names.join(','));
                        },
                        error: function (error) {
                            $(self).find("span, img").toggle("slow");
                            console.log("Hubo un error de internet, intente de nuevo");
                            console.log(error);
                        }
                    });

                    var tams = JSON.parse(tamProducto), htmlTams = '';
                    $('#tamArrayEdit').html(tamProducto);
                    $.each(tams, function (i, n) {
                        if (i != 'Normal') {
                            htmlTams += '<div class="widget widget-primary widget-item-icon">' +
                                    '       <div class="widget-item-left editThisTam">' +
                                    '            <span class="fa fa-save" data-toggle="tooltip" data-placement="top" title="Actualizar"></span>' +
                                    '        </div>' +
                                    '        <div class="widget-data">' +
                                    '            <div class="widget-int num-count">' + n + ' $</div>' +
                                    '            <div class="widget-title tamIndex">' + i + '</div>' +
                                    '            <div class="widget-subtitle col-md-3"><input type="text" class="form-control tamNewValInput" value="" placeholder="Actualizar" /></div>' +
                                    '      </div>  ' +
                                    '      <div class="widget-controls deleteThisTam">' +
                                    '           <a class="widget-control-right"><span class="fa fa-times"></span></a>' +
                                    '      </div>     ' +
                                    '   </div>';
                        }
                    });
                    $(".tamsListcont").html(htmlTams);
                    $(".headerimage").html('<img src="api/assets/img/productos/' + idProducto + '.jpg" style="width: 100%;" />');
                    setTimeout(function () {
                        $.when(
                                $(".joblist,.newjob").slideUp("slow")
                                ).then(function () {
                            $(".editjob,.showlistbtn").slideDown("slow");
                            $(self).find(".beforeLoad, .loading_img").toggle("slow");
                        });
                    }, 1000);
                });
    });

    $(document).on("click", ".editThisTam", function (event) {
        event.preventDefault();
        var self,
                idProducto = $('#editIdProdCont').html(),
                tamArray = JSON.parse($('#tamArrayEdit').html()),
                tamIndex = $(this).parent().find(".tamIndex").html(),
                tamNewVal = $(this).parent().find(".tamNewValInput").val();
        self = this;

        $.when(
                $(self).parent().css("opacity", "0.4"))
                .then(function () {

                    tamArray[tamIndex] = tamNewVal;

                    var formData = new FormData();
                    formData.append('meth', 'updateTams');
                    formData.append('idProducto', idProducto);
                    formData.append('tams', JSON.stringify(tamArray));
                    $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                        success: function (data) {
                            setTimeout(function () {
                                $.when(
                                        $(".editjob,.showlistbtn").slideUp("slow"),
                                        updateProductos()
                                        ).then(function () {
                                    $(".joblist").slideDown("slow");
                                    $(self).parent().css("opacity", "1");
                                });
                            }, 1000);
                        },
                        error: function (error) {
                            $(self).parent().css("opacity", "1");
                            console.log("Hubo un error de internet, intente de nuevo");
                            console.log(error);
                        }
                    });
                });
    });

    $(document).on("click", ".saveNewTam", function (event) {
        event.preventDefault();
        var self,
                idProducto = $('#editIdProdCont').html(),
                tamArray = JSON.parse($('#tamArrayEdit').html()),
                tamTitle = $('#nombreNewTam').val(),
                tamNewVal = $('#impactoNewTam').val();
        self = this;
        if (tamTitle != '' && tamNewVal != '') {
            $.when(
                    $(self).find(".beforeLoad, .loading_img").toggle())
                    .then(function () {

                        tamArray[tamTitle] = tamNewVal;

                        var formData = new FormData();
                        formData.append('meth', 'updateTams');
                        formData.append('idProducto', idProducto);
                        formData.append('tams', JSON.stringify(tamArray));
                        $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                            success: function (data) {
                                setTimeout(function () {
                                    $.when(
                                            $(".editjob,.showlistbtn").slideUp("slow"),
                                            updateProductos()
                                            ).then(function () {
                                        $(".joblist").slideDown("slow");
                                        $(self).find(".beforeLoad, .loading_img").toggle();
                                        setTimeout(function () {
                                            $.when(
                                                    $(".addNewTamPanel,.showTamList").slideUp("slow")
                                                    ).then(function () {
                                                $(".tamsListcont,.addNewTamBtn").slideDown("slow");
                                                $(self).find(".beforeLoad, .loading_img").toggle();
                                            });
                                        }, 1000);
                                    });
                                }, 1000);
                            },
                            error: function (error) {
                                $(self).parent().css("opacity", "1");
                                console.log("Hubo un error de internet, intente de nuevo");
                                console.log(error);
                            }
                        });
                    });
        } else {
            setTimeout(function () {

                $(".customalert_text").html("No puedes dejar los campos en blanco");
                $(".customalert").animate({width: 'toggle'}, 600);
            }, 650);
        }

    });

    $(document).on("click", ".deleteThisTam", function (event) {
        event.preventDefault();
        var self,
                idProducto = $('#editIdProdCont').html(),
                tamArray = JSON.parse($('#tamArrayEdit').html()),
                tamIndex = $(this).parent().find(".tamIndex").html();
        self = this;
        $.when(
                $(self).parent().css("opacity", "0.4"))
                .then(function () {

                    delete tamArray[tamIndex];

                    var formData = new FormData();
                    formData.append('meth', 'updateTams');
                    formData.append('idProducto', idProducto);
                    formData.append('tams', JSON.stringify(tamArray));
                    $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                        success: function (data) {
                            setTimeout(function () {
                                $.when(
                                        $(".editjob,.showlistbtn").slideUp("slow"),
                                        updateProductos()
                                        ).then(function () {
                                    $(".joblist").slideDown("slow");
                                    $(self).parent().css("opacity", "1");
                                });
                            }, 1000);
                        },
                        error: function (error) {
                            $(self).parent().css("opacity", "1");
                            console.log("Hubo un error de internet, intente de nuevo");
                            console.log(error);
                        }
                    });
                });
    });

    $(document).on("click", ".addNewTamBtn", function (event) {
        event.preventDefault();
        var self = this;
        $.when(
                $(self).find(".beforeLoad, .loading_img").toggle())
                .then(function () {
                    setTimeout(function () {
                        $.when(
                                $(".tamsListcont,.addNewTamBtn").slideUp("slow")
                                ).then(function () {
                            $(".addNewTamPanel,.showTamList").slideDown("slow");
                            $(self).find(".beforeLoad, .loading_img").toggle();
                        });
                    }, 1000);
                });
    });

    $(document).on("click", ".showTamList", function (event) {
        event.preventDefault();
        var self = this;
        $.when(
                $(self).find(".beforeLoad, .loading_img").toggle())
                .then(function () {
                    setTimeout(function () {
                        $.when(
                                $(".addNewTamPanel,.showTamList").slideUp("slow")
                                ).then(function () {
                            $(".tamsListcont,.addNewTamBtn").slideDown("slow");
                            $(self).find(".beforeLoad, .loading_img").toggle();
                        });
                    }, 1000);
                });
    });

    $(document).on("click", ".savechanges_btn", function (event) {
        event.preventDefault();
        var self = this;
        $(self).find("span, img").toggle();
        setTimeout(function () {
            var formData = new FormData(),
                    nombreProducto = $("#nombreProductoInput").val(),
                    descProducto = $("#descProdcutoInput").val(),
                    skuProducto = $("#skuProductoInput").val(),
                    precioProducto = $("#precioProductoInput").val(),
                    varsProducto = $("#varsPrducEdit").val(),
                    ingsProducto = $("#recetaTagsNames").val(),
                    idMenu = $("#menuFullCont").val();
            if (nombreProducto != '' && precioProducto != '' && varsProducto != '' && ingsProducto != '') {
                formData.append('meth', 'editProducto');
                formData.append('idProducto', $("#editIdProdCont").html());
                formData.append('nombreProducto', nombreProducto);
                formData.append('descProducto', descProducto);
                formData.append('skuProducto', skuProducto);
                formData.append('precioProducto', precioProducto);
                formData.append('varsProducto', varsProducto);
                formData.append('ingsProducto', ingsProducto);
                formData.append('idMenu', idMenu);
                $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                    success: function (data) {
                        console.log(data);
                        if (data.status == 'yes') {
                            $(".customalert_text").html("Producto editado exitosamente");
                            $(".customalert").animate({width: 'toggle'}, 600);
                            $(self).find("span, img").toggle();
                            $.when(
                                    $(".editjob,.showlistbtn,.newjob").slideUp("slow")
                                    ).then(function () {
                                $(".joblist").slideDown("slow");
                            });
                            updateProductos();
                        } else {
                            $(self).find("span, img").toggle();
                            $(".customalert_text").html("No pudimos editar el producto, intente de nuevo");
                            $(".customalert").animate({width: 'toggle'}, 600);
                        }
                    },
                    error: function (error) {
                        $(self).find("span, img").toggle();
                        console.log("Hubo un error de internet, intente de nuevo");
                        console.log(error);
                    }
                });
            } else {
                $(self).find("span, img").toggle();
                $(".customalert_text").html("No puedes dejar los campos en blanco");
                $(".customalert").animate({width: 'toggle'}, 600);
            }
        }, 1000);
    });

    var plsStop = 0;
    $(document).on("click", ".editProdCheck", function (event) {
        if (plsStop == 0) {
            plsStop = 1;
        } else {
            plsStop = 0;
            return;
        }
        //        event.preventDefault();
        var self = this;
        var status = '';
        setTimeout(function () {
            if ($(self).find('input').is(':checked')) {
                status = '1';
            } else {
                status = '0';
            }
            var formData = new FormData();
            formData.append('meth', 'changestatusProducto');
            formData.append('statusJob', status);
            formData.append('idProducto', $("#editIdProdCont").html());
            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                success: function (data) {
                    if (data.status == 'yes') {
                        $(".customalert_text").html("Producto actualizado exitosamente");
                        $(".customalert").animate({width: 'toggle'}, 600);
                        updateProductos();
                    } else {
                        $(".customalert_text").html("No pudimos actualizar el producto, intente de nuevo");
                        $(".customalert").animate({width: 'toggle'}, 600);
                        console.log(data);
                    }
                },
                error: function (error) {
                    $(self).find("span, img").toggle("slow");
                    console.log("Hubo un error de internet, intente de nuevo");
                    console.log(error);
                }
            });
        }, 2000);
    });

    $(document).on("click", ".deletejob", function (event) {
        event.preventDefault();
        var id = $("#editIdProdCont").html();
        var self = this;
        noty({
            text: 'Seguro que quieres eliminar la Mesa?',
            layout: 'topRight',
            buttons: [
                {addClass: 'btn btn-success btn-clean', text: 'Si', onClick: function ($noty) {
                        $(self).find("span, img").toggle("slow");
                        setTimeout(function () {
                            var formData = new FormData();
                            formData.append('meth', 'deleteProd');
                            formData.append('deleteid', id);

                            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                                success: function (data) {
                                    if (data.status == 'yes') {
                                        $(".customalert_text").html("Producto eliminado exitosamente");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        $(self).find("span, img").toggle("slow");
                                        $.when(
                                                $(".editjob,.showlistbtn,.newjob").slideUp("slow")
                                                ).then(function () {
                                            $(".joblist").slideDown("slow");
                                        });
                                        updateProductos();
                                    } else {
                                        $(self).find("span, img").toggle("slow");
                                        $(".customalert_text").html("No pudimos eliminar el producto, intente de nuevo");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        console.log(data);
                                    }
                                },
                                error: function (error) {
                                    $(self).find("span, img").toggle("slow");
                                    console.log("Hubo un error de internet, intente de nuevo");
                                    console.log(error);
                                }
                            });
                        }, 1000);
                    }
                },
                {addClass: 'btn btn-danger btn-clean', text: 'Cancelar', onClick: function ($noty) {
                        $noty.close();
                    }
                }
            ]
        }).setTimeout(4000);
    });

    $(document).on("click", ".savenewjob", function (event) {
        event.preventDefault();
        var self = this;
        $(self).find(" span, img").toggle("slow");
        setTimeout(function () {

            var formData = new FormData(),
                    nombreProducto = $("#nombreProductoInputNew").val(),
                    descProducto = $("#descProdcutoInputNew").val(),
                    skuProducto = $("#skuProductoInputNew").val(),
                    precioProducto = $("#precioProductoInputNew").val(),
                    varsProducto = $("#varsPrducEditNew").val(),
                    ingsProducto = $("#recetaTagsNamesNew").val(),
                    idMenu = $("#menuFullContNew").val();
            if (nombreProducto != '' && precioProducto != '' && varsProducto != '' && ingsProducto != '') {
                if ($('#newheaderimgPortNew').get(0).files.length > 0) {
                    formData.append('imgheaderPortNew', $('#newheaderimgPortNew').get(0).files[0]);
                    formData.append('meth', 'addnewProd');
                    formData.append('idProducto', $("#editIdProdCont").html());
                    formData.append('nombreProducto', nombreProducto);
                    formData.append('descProducto', descProducto);
                    formData.append('skuProducto', skuProducto);
                    formData.append('precioProducto', precioProducto);
                    formData.append('varsProducto', varsProducto);
                    formData.append('ingsProducto', ingsProducto);
                    formData.append('idMenu', idMenu);
                    $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                        success: function (data) {
                            console.log(data);
                            if (data.status == 'yes') {
                                $(".customalert_text").html("Producto agregado exitosamente");
                                $(".customalert").animate({width: 'toggle'}, 600);
                                $(self).find("span, img").toggle();
                                $.when(
                                        $(".editjob,.showlistbtn,.newjob").slideUp("slow")
                                        ).then(function () {
                                    $(".joblist").slideDown("slow");
                                });
                                updateProductos();
                            } else {
                                $(self).find("span, img").toggle();
                                $(".customalert_text").html("No pudimos agregar el producto, intente de nuevo");
                                $(".customalert").animate({width: 'toggle'}, 600);
                            }
                        },
                        error: function (error) {
                            $(self).find("span, img").toggle();
                            console.log("Hubo un error de internet, intente de nuevo");
                            console.log(error);
                        }
                    });
                } else {
                    $(self).find(" span, img").toggle("slow");
                    $(".customalert_text").html('Debes seleccionar una imagen primero');
                    $(".customalert").animate({width: 'toggle'}, 600);
                }
            } else {
                $(self).find("span, img").toggle();
                $(".customalert_text").html("No puedes dejar los campos en blanco");
                $(".customalert").animate({width: 'toggle'}, 600);
            }
        }, 1000);
    });

    $(document).on("click", ".disabledswitch", function (event) {
        event.preventDefault();
    });

    $(document).on("click", ".addnewbtn", function (event) {
        event.preventDefault();
        $.when(
                $(".joblist,.editjob").slideUp("slow")
                ).then(function () {
            $(".newjob,.showlistbtn").slideDown("slow");
        });
    });

    $(document).on("click", ".showlistbtn", function (event) {
        event.preventDefault();
        $.when(
                $(".editjob,.showlistbtn,.newjob").slideUp("slow")
                ).then(function () {
            $(".joblist").slideDown("slow");
        });
    });

    function updateProductos() {
        var formData = new FormData();
        formData.append('meth', 'getProductosMenu');
        $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
            success: function (data) {
                $('.joblist').html(data.output);
                $(document).find(".boxProductItem").delay(500).velocity("transition.slideUpBigIn", {stagger: 10});
                console.log(data);
            },
            error: function (error) {
                console.log("Hubo un error de internet, intente de nuevo");
                console.log(error);
            }
        });
    }

</script>