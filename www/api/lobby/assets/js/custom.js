$(window).on("load", function () {
	$("#cardsPanel").delay(600).velocity("transition.slideUpBigIn", 1200);

	//////////////////////////////////////////////////////ITERAR ENTRE LOS PANELS
	$(document).on("click", "#regBtn, .regBtn", function () {
		$(".appPanel").velocity("transition.slideDownOut", 500);
		$("#regPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
	});
	$(document).on("click", "#loginBtn, .loginBtn", function () {
		$(".appPanel").velocity("transition.slideDownOut", 500);
		$("#loginPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
	});
	$(document).on("click", ".forgotPassBtn", function () {
		$(".appPanel").velocity("transition.slideDownOut", 500);
		$("#forgotPassPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
	});

	////////////////////////////////////////////////////// DISPARAMOS LOS EVENTOS DE INICIO DE SESION
	$(document).on("click", "#submitBtn", function () {
		authUser();
	});
	$('#loginForm').on("submit", function () {
		authUser();
	});
	$('#loginPassInput').keypress(function (e) {
		if (e.which == 13) {
			authUser();
			return false;
		}
	});

	///////////////////////////////////////////////////////// CUANDO EL USUARIO HACE CLIC  EN CREAR CUENTA
	$(document).on("click", "#newUserBtn", function (e) {
		regUser();
	});
	$('#regForm').on("submit", function () {
		regUser();
	});
	$('#confpassword_input').keypress(function (e) {
		if (e.which == 13) {
			regUser();
			return false;
		}
	});

	///////////////////////////////////////////////////////// CUANDO EL USUARIO HACE CLICEN RESTAURAR CONTRASEÑA
	$(document).on("click", "#fpBtn", function (e) {
		fpEmail();
	});
	$('#resetPassForm').on("submit", function () {
		fpEmail();
	});
	$('#fpUserInput').keypress(function (e) {
		if (e.which == 13) {
			fpEmail();
			return false;
		}
	});

	// ADD SLIDEDOWN ANIMATION TO DROPDOWN-MENU
	$('.dropdown').on('show.bs.dropdown', function (e) {
		$('.dropdown-menu').removeClass('invisible');
		$(this).find('.dropdown-menu').first().stop(true, true).slideDown();
	});

	// ADD SLIDEUP ANIMATION TO DROPDOWN-MENU
	$('.dropdown').on('hide.bs.dropdown', function (e) {
		$(this).find('.dropdown-menu').first().stop(true, true).slideUp();
	});

	/////////////////////////////////////////////////////////////////////// OCULTAR ATUMATICAMENTE LA CAJA DE NOTIFICACIONES
	$('body').find('*').not('#notifBox').on('click', function (e) {
		if (window.notifOn == '1') {
			e.stopImmediatePropagation();
			$("#notifBox").velocity("transition.slideDownBigOut", 600);
			window.notifOn = '0';
		}
	});
});

//////////////////////////////////////////////////////////// EVENTO AL INICIAR SESION
function authUser() {
	var username = $('#loginUserInput').val(),
		pass = $('#loginPassInput').val(),
		self = this;

	if (username == '' || pass == '') {
		username == '' ? $("#loginUserInput").velocity("callout.shake") : $("#loginPassInput").velocity("callout.shake");
		notifyThem('warning', 'Debes llenar todos los campos');
		return false;
	}

	if (!isEmail(username)) {
		$("#loginUserInput").velocity("callout.shake");
		notifyThem('danger', 'Email no es válido');
		return false;
	}

	if (pass.length < 8) {
		$("#loginPassInput").velocity("callout.shake");
		notifyThem('warning', 'La contraseña no puede tener menos de 8 caracteres');
		return false;
	}

	// LOADING IMPORTANT
	$("#submitBtn").html('<img src="assets/img/loadingbar.gif" style="height: 20px;" />');

	var formData = new FormData();
	formData.append('meth', 'login');
	formData.append('username', username);
	formData.append('password', pass);
	$.ajax({
		url: "http://api.miinfo.co/api.php", type: 'POST', dataType: "json",
		cache: false, contentType: false, processData: false, data: formData,
		success: function (data) {
			console.log('Ajax response success');
			console.log(data);

			if (data.scriptResp == 'userqueryFail') {
				notifyThem('danger', 'No pudimos validar su usuario, intente de nuevo');
				$('#newusername_input,#newpassword_input').val('');
			}

			if (data.scriptResp == 'noMatch') {
				notifyThem('warning', 'Usuario o contraseña incorrectos', '#FP#');
			}

			if (data.scriptResp == 'match') {
				$(".appPanel").velocity("transition.slideDownOut", 500);
				$(".customCard").hide();
				$(".underconsCard").toggle();
				$("#cardsPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
			}
			$("#submitBtn").html('Ingresar');
		},
		error: function (data, xhr, status, error) {
			console.log("Ajax Error Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText);
			console.log(data);
			notifyThem('danger', 'Error de Internet');
			$("#submitBtn").html('Ingresar');
		}
	});
}

//////////////////////////////////////////////////////////////   REGISTRAR NUEVO USUARIO
function regUser() {
	var username = $('#newusername_input').val(),
		pass = $('#newpassword_input').val(),
		passConf = $('#confpassword_input').val(),
		self = this;

	if (username == '' || pass == '' || passConf == '') {
		username == '' ? $("#newusername_input").velocity("callout.shake") : pass == '' ? $("#newpassword_input").velocity("callout.shake") : $("#confpassword_input").velocity("callout.shake");
		notifyThem('warning', 'Debes llenar todos los campos');
		return false;
	}

	if (!isEmail(username)) {
		$("#newusername_input").velocity("callout.shake");
		notifyThem('danger', 'Email no es válido');
		return false;
	}

	if (pass.length < 8) {
		$("#newpassword_input").velocity("callout.shake");
		notifyThem('warning', 'La contraseña no debe tener menos de 8 caracteres');
		return false;
	}

	if (pass != passConf) {
		$("#confpassword_input").velocity("callout.shake");
		notifyThem('danger', 'Las contraseñas no coinciden');
		return false;
	}

	// LOADING IMPORTANT
	$("#newUserBtn").html('<img src="assets/img/loadingbar.gif" style="height: 20px;" />');

	var formData = new FormData();
	formData.append('meth', 'reg');
	formData.append('username', username);
	formData.append('password', pass);
	$.ajax({
		url: "http://api.miinfo.co/api.php", type: 'POST', dataType: "json",
		cache: false, contentType: false, processData: false, data: formData,
		success: function (data) {
			console.log('Ajax response success');
			console.log(data);

			if (data.scriptResp == 'userAlreadyInDB') {
				notifyThem('danger', 'Este email ya está registrado en nuestro sistema');
			}

			if (data.scriptResp == 'failuserReg') {
				notifyThem('danger', 'No pudimos crear tu usuario, intenta de nuevo');
			}

			if (data.scriptResp == 'queryFailed') {
				notifyThem('danger', 'Hubo un error con la plataforma');
			}

			if (data.scriptResp == 'regsuccess') {
				notifyThem('success', 'El usuario ha sido creado Exitosamente');
				setTimeout(function (e) {
					$("#regPanel").velocity("transition.slideDownOut", 500);
					$("#loginPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
				}, 1500);
			}
			$("#newUserBtn").html('Crear Cuenta');
		},
		error: function (data, xhr, status, error) {
			console.log("Ajax Error Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText);
			console.log(data);
			notifyThem('danger', 'Error de Internet');
			$("#newUserBtn").html('Crear Cuenta');
		}
	});
}

////////////////////////////////////////////////////////////// ENVIAR EMAIL DE RESTARURAR CONTRASEÑA
function fpEmail() {
	var username = $('#fpUserInput').val(),
		self = this;

	if (username == '') {
		$("#fpUserInput").velocity("callout.shake");
		notifyThem('warning', 'Debes llenar todos los campos');
		return false;
	}

	if (!isEmail(username)) {
		$("#fpUserInput").velocity("callout.shake");
		notifyThem('danger', 'Email no es válido');
		return false;
	}

	
	// LOADING 
	$("#fpBtn").html('<img src="assets/img/loadingbar.gif" style="height: 20px;" />');
	var formData = new FormData();
	formData.append('meth', 'fp');
	formData.append('username', username);
	$.ajax({
		url: "http://api.miinfo.co/api.php", type: 'POST', dataType: "json",
		cache: false, contentType: false, processData: false, data: formData,
		success: function (data) {
			console.log('Ajax response success');
			console.log(data);

			if (data.scriptResp == 'userNotMatch') {
				notifyThem('danger', 'Este email no se encuentra registrado en nuestro sistema');
			}

			if (data.scriptResp == 'queryFailedd') {
				notifyThem('danger', 'Error al conectar, intente de nuevo');
			}

			if (data.scriptResp == 'msgSent') {
				notifyThem('success', 'Por favor revise su bandeja de entrada');
				setTimeout(function (e) {
					$(".appPanel").velocity("transition.slideDownOut", 500);
					$("#loginPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
				}, 1500);
			}
			$("#fpBtn").html('Enviar Correo');
		},
		error: function (data, xhr, status, error) {
			console.log("Ajax Error Result: " + status + " " + error + " " + xhr.status + " " + xhr.statusText);
			console.log(data);
			notifyThem('danger', 'Error de Internet');
			$("#fpBtn").html('Enviar Correo');
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


////////////////////////////////
///////		DEBUG	  //////////
////////////////////////////////
/* $(document).on("click", "#debugApp", function () {
	$(".appPanel").velocity("transition.slideDownOut", 500);
	$(".customCard").hide();
	$(".fpEmailSent").toggle();
	$("#cardsPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
}); */
$(document).on("click", "#debugApp", function () {
	$(".appPanel").velocity("transition.slideDownOut", 500);
	$("#resetPassPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
});