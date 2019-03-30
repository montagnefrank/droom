<!DOCTYPE html>
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

    <div class="row appPanel" id="cardsPanel">
        <div class="col-sm-12 col-md-4 col-lg-4 wallCard">
            <div class="card full-screen-container">
                <div class="card-body">
                    <div class="list-unstyled member-list row">
                        <div class="col-lg-16 col-sm-16 col-xs-16 customCard validatedCard">
                            <div class="media flex-column ">
                                <figure class="background"><img class="d-flex mr-3" src="assets/img/infoicon.png" alt="Generic user image"></figure>
                                <span class="message_userpic large"><img class="d-flex mr-3" src="assets/img/infoicon.png"
                                        alt="Generic user image">
                                </span>
                                <div class="media-body">
                                    <h6 class="mt-0 mb-1">Felicitaciones</h6>
                                    Tu cuenta ha sido validada exitosamente<br>
                                    <br>
                                    <button class="btn btn-info btn-round gohomeBtn">Iniciar Sesi&oacute;n</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
				$(".customCard").hide();
				$(".validatedCard").toggle();
				$("#cardsPanel").delay(500).velocity("transition.slideUpBigIn", 1200);
            $(document).on("click", ".gohomeBtn", function () {
                window.location.href = 'http://app.miinfo.burtoncloud.com';
            });
        });
    </script>
</body>

</html>