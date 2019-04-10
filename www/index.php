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

// DEBUG EN PANTALLA //
//error_reporting(E_ALL);
//ini_set('display_errors', 1);
// DESPLEGAMOS TODA LA CONFIG   //
require ("assets/scripts/config.php");
?>
<!DOCTYPE html>
<html lang="es">
    <head>        
        <title>DROOM - Sistema inteligente de control de Restaurantes</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="assets/node_modules/dragula/dist/dragula.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" type="text/css" id="theme" href="assets/css/theme-red.css"/>
        <link rel="stylesheet" type="text/css" id="theme" href="assets/css/custom.css"/>
        <?php
        if ($page == 'login') {
            echo '<link rel="stylesheet" href="assets/css/style.css">';
        }
        ?>
    </head>
    <body>
        <?php
        if ($page == 'login') {
            ?>
            <div class="page-container login">
                <div class="login-center">
                    <img src="assets/img/logo_rec.png" />
                    <form method="post">
                        <input type="text" name="username" class="username" placeholder="Usuario" >
                        <input type="password" name="password" class="password" placeholder="Contraseña" >
                        <button type="submit">Iniciar Sesión</button>
                        <div class="error"><span>+</span></div>
                        <div class="notificacion" hidden></div>
                    </form>
                </div>
            </div> 
            <?php
        } else {

            if ($module == "cocina") {
                echo '<div class="page-container page-navigation-top-fixed page-navigation-toggled page-container-wide">';
            } else {
                echo '<div class="page-container page-navigation-top-fixed">';
            }
            require ("assets/views/sidebar.php");
            ?>
            <div class="page-content" style="height: 100%;">
                <?php require ("assets/views/statusbar.php"); ?>          
                <!--PANEL A MOSTRAR-->                      
                <?php require ("modules/" . $module . "/view.php"); ?>                           
            </div>
        </div>
        <!-- MENSAJE DE SALIDA-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fas fa-sign-out-alt"></span> Salir de <strong>Di Rulo Pizzeria</strong> ?</div>
                    <div class="mb-content">
                        <p>¿Est&aacute; seguro que desea salir?</p>                    
                        <p>Presione No si desea continuar trabajando. Presione Si para salir.</p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <a href="#" class="btn btn-info btn-lg btnSalir">Si</a>
                            <button class="btn btn-default btn-lg mb-control-close">No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="notificacion" hidden></div>
        <!-- FIN MENSAJE DE SALIDA-->

        <!-- START SIDEBAR -->
        <?php
        if ($module == "dashboard.php") {
            require ("assets/dashboard/rightbar.php");
        }
        ?>
        <!-- END SIDEBAR -->        

        <!-- PRELOADS -->
        <audio id="audio-alert" src="assets/audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="assets/audio/fail.mp3" preload="auto"></audio>
        <!-- FIN PRELOADS --> 
        <?php
    }

    require ("assets/scripts/pagescripts.php");
    ?>
</body>
</html>