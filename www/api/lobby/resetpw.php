<?php

?><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Miinfo MArketing Platform">
    <meta name="author" content="Burton Tech">
    <link rel="icon" href="assets/img/favicon.png">
    <title>Miinfo</title>
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="assets/vendor/bootstrap-4.1.1/css/bootstrap.css" type="text/css">
    <link href="assets/vendor/datatables/css/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="assets/vendor/datatables/css/responsive.dataTables.min.css" rel="stylesheet">
    <link href="assets/vendor/jquery-jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/theme.css" type="text/css">
</head>

<body class="menuclose-right rounded menuclose">

    
    <div class="wrapper-content-sign-in p-0  appPanel" id="resetPassPanel">
        <div class="col-md-8 offset-md-8 text-left side_signing_full">
            <form class="form-signin1 full_side text-white " id='resetPassForm'>
                <img src="assets/img/logo2.png" class="loginImg">
                <label class="sr-only">Password</label>
                <input type="password" class="form-control" placeholder="Nueva contrase&ntilde;a" id="resetPassIntup" style='margin-top: 16px;'>
                <label class="sr-only">Confirmar</label>
                <input type="password" class="form-control" placeholder="Confirmar contrase&ntilde;a" id="resetPassConfIntup" style='margin-top: 16px;'>
                <br>
                <a class="btn btn-lg btn-primary btn-round" id="resetPwBtn">Resetear</a> <br>
                <br>
                <p class="mt-3"><a class="text-white gohomeBtn">¡Deseo iniciar sesi&oacute;n!</a> <br></p>
            </form>
            <br>
        </div>
        <footer class="footer-content row  justify-content-between align-items-center">
            <div class="col-sm-8 text-right">
                <a class="text-white">Términos de uso</a> |
                <a class="text-white gohomeBtn">¡Registrate Aquí!</a>
            </div>
        </footer>
    </div>

    
    <div class="row appPanel" id="notifBox"></div>

    <script src="assets/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/vendor/bootstrap4beta/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/vendor/cookie/jquery.cookie.js" type="text/javascript"></script>
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
    <script src="assets/vendor/cicular_progress/circle-progress.min.js" type="text/javascript"></script>
    <script src="assets/vendor/sparklines/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="assets/vendor/jquery-jvectormap/jquery-jvectormap.js"></script>
    <script src="assets/vendor/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="assets/vendor/spincrement/jquery.spincrement.min.js" type="text/javascript"></script>
    <script src="assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="assets/vendor/datatables/js/dataTables.bootstrap4.js"></script>
    <script src="assets/vendor/datatables/js/dataTables.responsive.min.js"></script>
    <script src="assets/js/adminux.js" type="text/javascript"></script>
    <script src='assets/js/velocity.min.js'></script>
    <script src='assets/js/velocity.ui.min.js'></script>
    <script>
        $(window).on("load", function () {
            const urlParams = new URLSearchParams(window.location.search);
            const userToken = urlParams.get('token');

            $("#resetPassPanel").delay(600).velocity("transition.slideUpBigIn", 1200);
            $(document).on("click", ".gohomeBtn", function () {
                window.location.href = 'http://app.miinfo.burtoncloud.com';
            });
            
	        ////////////////////////////////////////////////////// DISPARAMOS LOS EVENTOS DE RESETEAR CONTRASEÑA
            $(document).on("click", "#resetPwBtn", function () {
                resetPass();
            });
            $('#resetPassForm').on("submit", function () {
                resetPass();
            });
            $('#resetPassConfIntup').keypress(function (e) {
                if (e.which == 13) {
                    resetPass();
                    return false;
                }
            });

            function resetPass() {
                var pass = $('#resetPassIntup').val(),
                    passConf = $('#resetPassConfIntup').val(),
                    self = this;

                if (pass == '' || passConf == '') {
                    pass == '' ? $("#resetPassIntup").velocity("callout.shake") : $("#resetPassConfIntup").velocity("callout.shake");
                    notifyThem('warning', 'Debes llenar todos los campos');
                    return false;
                }

                if (pass.length < 8) {
                    $("#resetPassIntup").velocity("callout.shake");
                    notifyThem('warning', 'La contraseña no debe tener menos de 8 caracteres');
                    return false;
                }

                if (pass != passConf) {
                    $("#resetPassConfIntup").velocity("callout.shake");
                    notifyThem('danger', 'Las contraseñas no coinciden');
                    return false;
                }

                // LOADING IMPORTANT
                $("#resetPwBtn").html('<img src="assets/img/loadingbar.gif" style="height: 20px;" />');

                var formData = new FormData();
                formData.append('meth', 'setNewPass');
                formData.append('password', pass);
                formData.append('token', userToken);
                $.ajax({
                    url: "http://api.miinfo.burtoncloud.com/api.php", type: 'POST', dataType: "json",
                    cache: false, contentType: false, processData: false, data: formData,
                    success: function (data) {
                        console.log('Ajax response success');
                        console.log(data);

                        if (data.scriptResp == 'badToken') {
                            notifyThem('danger', 'Error, el token de seguridad no es valido');
                        }

                        if (data.scriptResp == 'resetOk') {
                            notifyThem('success', 'La contraseña ha sido actualizada exitosamente');
                            setTimeout(function (e) {
                                $("#regPanel").velocity("transition.slideDownOut", 500);
                                setTimeout( function (e) {
                                    window.location.href = 'http://app.miinfo.burtoncloud.com';
                                }, 500);
                            }, 1500);
                        }
                        $("#resetPwBtn").html('Resetear');
                    },
                    error: function (data, xhr, status, error) {
                        console.log("Ajax Error Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText);
                        console.log(data);
                        notifyThem('danger', 'Error de Internet');
                        $("#resetPwBtn").html('Resetear');
                    }
                });
            }

            
//////////////////////////////////////////////////////////// MOTOR DE NOTIFICACIONES
function notifyThem(alert, mensaje, aux) {
	$("#notifBox").velocity("transition.slideDownBigOut", 10);

	var notifBody;
	window.notifOn = '1';
	var title, icon;
	if (alert == 'success') {
		title = 'Felicidades';
		icon = 'fa-check-square';
	}
	if (alert == 'danger') {
		title = 'Error';
		icon = 'fa-times-rectangle';
	}
	if (alert == 'warning') {
		title = 'Alerta';
		icon = 'fa-warning';
	}
	if (alert == 'primary') {
		title = 'Atención';
		icon = 'fa-info';
	}

	//////////////////////// AUX PREDEFINIDOS
	if (aux == '#FP#') {
		aux = '<a class="text-white forgotPassBtn" id="forgotPassBtn_notif">¿No recuerdas tu contraseña?</a>';
	}

	notifBody = '<div class="col-md-8 col-lg-8 col-xl-4">' +
		'	<div class="activity-block ' + alert + '">' +
		'		<div class="media">' +
		'			<div class="media-body">' +
		'				<h5 class="notyTitle">' + title + '</h5>' +
		'				<p class="notyText">' + mensaje + '</p>' +
		'			</div>' +
		'			<i class="fa ' + icon + '" class="notyIcon"></i>' +
		'		</div>' +
		'		<br>';

	if (aux) {
		notifBody = notifBody +
			'		<div class="media">' +
			'      		<div class="media-body">' +
			'			  	<span class="progress-heading">' + aux + '</span>' +
			'      		</div>' +
			'    	</div>';
	}

	notifBody = notifBody +
		'		<i class="bg-icon text-center fa ' + icon + '" class="notyIcon"></i>' +
		'	</div>' +
		'</div>';
	$('#notifBox').html(notifBody);

	$("#notifBox").delay(300).velocity("transition.slideUpBigIn", 1200);
}

////////////////////////////////////////////////////// VALIDAR SI EL CAMPO ES EFECTIVAMENTE UN EMAIL
function isEmail(email) {
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return re.test(email);
}


	/////////////////////////////////////////////////////////////////////// OCULTAR ATUMATICAMENTE LA CAJA DE NOTIFICACIONES
	$('body').find('*').not('#notifBox').on('click', function (e) {
		if (window.notifOn == '1') {
			e.stopImmediatePropagation();
			$("#notifBox").velocity("transition.slideDownBigOut", 600);
			window.notifOn = '0';
		}
	});

        });
    </script>
</body>

</html>