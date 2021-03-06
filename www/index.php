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

/* DESPLEGAMOS TODA LA CONFIG   // */
require ("assets/scripts/config.php");

// CONSTRUIMOS LA VISTA PRINCIPAL   //
require ("assets/views/head.php");
if ($page == 'login') {
    echo '<body class="login">';
    require ("assets/views/login.php");
} else {
    echo '<body class="' . $fullwidth . ' ">' . $videoTag . '<div class="page-container  ' . $sidebar . '">';
    require ("assets/views/sidebar.php");
    echo '<div class="page-content" style="height: 100%;">';
    require ("assets/views/statusbar.php");
    require ("modules/" . $module . "/view.php");
    echo '</div> </div>';
    if ($module == "dashboard") {
        require ("assets/dashboard/rightbar.php");
    }
}
require ("assets/scripts/pagescripts.php");
echo '</body> </html>';
?>