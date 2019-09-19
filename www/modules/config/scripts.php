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
    $(document).ready(function () {
        var validatepass = $("#passupdate").validate({
            ignore: [],
            rules: {
                oldpass: {
                    required: true,
                    minlength: 8,
                    maxlength: 16
                },
                newpass: {
                    required: true,
                    minlength: 8,
                    maxlength: 16
                },
                reppass: {
                    required: true,
                    minlength: 8,
                    maxlength: 16,
                    equalTo: "#newpass"
                }
            }
        });

        $(document).on("click", "#submitnewpass", function (e) {
            e.preventDefault();
            e.stopImmediatePropagation();
        });

        estableceEstablecimiento();
        //VALIDACION DEL FORM INPUT FILE
        $("form[name='formImagen']").validate({
            rules: {
                "fileImagen": {
                    required: true,
                    extension: "jpeg|png|jpg|gif"
                }
            },
            messages: {
                "fileImagen": {
                    required: "Seleccione una imagen.",
                    extension: "Solo imagenes de tipo jpg son permitidas."
                }
            }
        });

        $(".btnSubeImagen").click(function () {
            //CUANDO LA IMAGEN ESTA CORRECTA
            if ($("form[name='formImagen']").valid()) {
                $("#confirmacionCambioFoto").modal("show");

            }

        });

        //Confirmacion de guardado de imagen
        $(".btnConfirmaImagen").click(function () {
            $.ajax({
                url: 'api/api.php',
                type: 'POST',
                data: {
                    imagenNueva: imagen,
                    meth: 'imagenNueva',
                },
                success: function (respuesta) {
                    if (respuesta) {
                        $(".fotoPerfil img").attr("src", imagen);
                        $(".fotoAntigua img").attr("src", imagen);
                        $("#confirmacionCambioFoto").modal("hide");
                        $("#modal_change_photo").modal("hide");
                        console.log(respuesta);
                        $.notify("Foto de perfil actualizada con exito !", "success");
                    }
                },
                error: function (error) {
                    console.log('Disculpe, existió un problema');
                    console.log(error);
                },
                complete: function (xhr, status) {
                    console.log('Petición realizadas');
                }
            });
        });

        $("#fileImagen").change(function () {
            readURL(this);
        });

        var imagen;
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.nuevaImagen').attr('src', e.target.result);
                    imagen = e.target.result;
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        /* Para establecimiento */

        $(".widgetEstablecimiento").click(function () {
            $("#modal_change_establecimiento").modal("show");
        });

        $(".btnEstableceEstablecimiento").click(function () {

            //ESTA CHEKADO
            if ($(".radioEstablecimiento input:radio:checked").val() != "") {
                $.ajax({
                    url: 'assets/user_config/user_config_controller.php',
                    type: 'POST',
                    dataType: "json",
                    data: {
                        establecimiento: $(".radioEstablecimiento input:radio:checked").val(),
                    },
                    success: function (respuesta) {

                        if (respuesta) {
                            $("#modal_change_establecimiento").modal("hide");

                            $(".nombreEstablecimiento").text(respuesta.nombreEstablecimiento + " " + respuesta.sectorEstablecimiento);
                            $.notify(respuesta.nombreEstablecimiento + " " + respuesta.sectorEstablecimiento + " establecido con exito !", "success");
                        }

                    },
                    error: function (error) {
                        console.log('Disculpe, existió un problema');
                        console.log(error);
                    },
                    complete: function (xhr, status) {
                        console.log('Petición realizada');
                    }
                });
            } else {
                $.notify("Error \nSeleccione un establecimiento para la asignación del mismo !", "error");
            }
        });

        function estableceEstablecimiento() {
            return true;
        }

        /* Para el cambio de contraseña */

    });


    $(document).on("click", "#updateNewLogoBtn", function (event) {
        event.preventDefault();
        var btnself = this;
        $.when(
                $(btnself).find(".beforeLoad,.loading_img").toggle())
                .then(function () {
                    setTimeout(function () {
                        if ($('#updateNewLogo').get(0).files.length > 0) {
                            var formData = new FormData();
                            formData.append('meth', 'newLogo');
                            formData.append('imgcustom', $('#updateNewLogo').get(0).files[0]);
                            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                                success: function (data) {
                                    if (data.status == 'yes') {
                                        $(".customalert_text").html("Imagen actualizada exitosamente");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        $(btnself).find(".beforeLoad,.loading_img").toggle();
                                    } else {
                                        $(btnself).find("span, img").toggle("slow");
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

    $(document).on("click", "#updateSlide1Btn", function (event) {
        event.preventDefault();
        var btnself = this;
        $.when(
                $(btnself).find(".beforeLoad,.loading_img").toggle())
                .then(function () {
                    setTimeout(function () {
                        if ($('#updateSlide1').get(0).files.length > 0) {
                            var formData = new FormData();
                            formData.append('meth', 'newSlide1');
                            formData.append('imgcustom', $('#updateSlide1').get(0).files[0]);
                            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                                success: function (data) {
                                    if (data.status == 'yes') {
                                        $(".customalert_text").html("Imagen actualizada exitosamente");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        $(btnself).find(".beforeLoad,.loading_img").toggle();
                                    } else {
                                        $(btnself).find("span, img").toggle("slow");
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

    $(document).on("click", "#updateSlide2Btn", function (event) {
        event.preventDefault();
        var btnself = this;
        $.when(
                $(btnself).find(".beforeLoad,.loading_img").toggle())
                .then(function () {
                    setTimeout(function () {
                        if ($('#updateSlide2').get(0).files.length > 0) {
                            var formData = new FormData();
                            formData.append('meth', 'newSlide2');
                            formData.append('imgcustom', $('#updateSlide2').get(0).files[0]);
                            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                                success: function (data) {
                                    if (data.status == 'yes') {
                                        $(".customalert_text").html("Imagen actualizada exitosamente");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        $(btnself).find(".beforeLoad,.loading_img").toggle();
                                    } else {
                                        $(btnself).find("span, img").toggle("slow");
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

    $(document).on("click", "#updateSlide3Btn", function (event) {
        event.preventDefault();
        var btnself = this;
        $.when(
                $(btnself).find(".beforeLoad,.loading_img").toggle())
                .then(function () {
                    setTimeout(function () {
                        if ($('#updateSlide3').get(0).files.length > 0) {
                            var formData = new FormData();
                            formData.append('meth', 'newSlide3');
                            formData.append('imgcustom', $('#updateSlide3').get(0).files[0]);
                            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                                success: function (data) {
                                    if (data.status == 'yes') {
                                        $(".customalert_text").html("Imagen actualizada exitosamente");
                                        $(".customalert").animate({width: 'toggle'}, 600);
                                        $(btnself).find(".beforeLoad,.loading_img").toggle();
                                    } else {
                                        $(btnself).find("span, img").toggle("slow");
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
    
    $(document).on("click", ".changeSidebar", function (event) {
        var self = this;
        var status = '';
        setTimeout(function () {
            if ($(self).find('input').is(':checked')) {
                status = '1';
            } else {
                status = '0';
            }
            var formData = new FormData();
            formData.append('meth', 'sidebarUpdate');
            formData.append('changeStatus', status);
            formData.append('idUsuario', $(self).find('.idusuario_cont').html());
            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                success: function (data) {
                    if (data.status == 'yes') {
                        location.reload();
                    } else {
                        setTimeout(function () {
                            $(".customalert_text").html("Hubo un error, intente de nuevo");
                            $(".customalert").animate({width: 'toggle'}, 600);
                            console.log(data);
                        }, 2000);
                    }
                },
                error: function (error) {
                        $(".customalert_text").html("Error AJAX");
                        $(".customalert").animate({width: 'toggle'}, 600);
                        console.log(error);
                },
                cache: false,
                contentType: false,
                processData: false
            });
        }, 2000);
    });
    
    $(document).on("click", ".changeBoxed", function (event) {
        var self = this;
        var status = '';
        setTimeout(function () {
            if ($(self).find('input').is(':checked')) {
                status = '1';
            } else {
                status = '0';
            }
            var formData = new FormData();
            formData.append('meth', 'fullwidthUpdate');
            formData.append('changeStatus', status);
            formData.append('idUsuario', $(self).find('.idusuario_cont').html());
            $.ajax({url: 'api/api.php', type: 'POST', dataType: "json", cache: false, contentType: false, processData: false, data: formData,
                success: function (data) {
                    if (data.status == 'yes') {
                        location.reload();
                    } else {
                        setTimeout(function () {
                            $(".customalert_text").html("Hubo un error, intente de nuevo");
                            $(".customalert").animate({width: 'toggle'}, 600);
                            console.log(data);
                        }, 2000);
                    }
                },
                error: function (error) {
                        $(".customalert_text").html("Error AJAX");
                        $(".customalert").animate({width: 'toggle'}, 600);
                        console.log(error);
                },
                cache: false,
                contentType: false,
                processData: false
            });
        }, 2000);
    });
</script>