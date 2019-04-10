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
<div class="page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide  scroll">
    <ul class="x-navigation" id="barralateral">
        <li class="xn-logo">
            <a href="/?show=home">Dirulo</a>
            <a href="#" class="x-navigation-control"></a>
        </li>
        <li class="xn-profile">
            <a href="#" class="profile-mini fotoPerfil">
                <img src="<?php echo $_SESSION["usuario"]['userImg']; ?>" alt="User"/>
            </a>
            <div class="profile">
                <div class="profile-image fotoPerfil">
                    <img src="<?php echo $_SESSION["usuario"]['userImg']; ?>" alt="User"/>
                </div>
                <div class="profile-data">
                    <div class="profile-data-name">
                        <?php echo $_SESSION["usuario"]["nombresUsuario"] . "   " . $_SESSION["usuario"]["apellidosUsuario"]; ?>
                        <div class="profile-data-title">
                            <?php echo $_SESSION["usuario"]["nombrePerfil"]; ?>
                        </div>
                    </div>
                    <div class="profile-data-title nombreEstablecimiento">                        
                        <?php echo $_SESSION["usuario"]["nombreEstablecimiento"] . " <br /> " . $_SESSION["usuario"]["sectorEstablecimiento"]; ?>
                    </div>
                </div>
                <div class="profile-controls">
                    <!--                    
                    <a href="pages-profile.html" class="profile-control-left"><span class="fa fa-info"></span></a>
                    <a href="pages-messages.html" class="profile-control-right"><span class="fa fa-envelope"></span></a>
                    -->
                </div>
            </div>                                                                        
        </li>
        <li class="xn-title">Menú principal</li>
            <?php
            $perfil = $_SESSION["usuario"]["idPerfil"];
            if ($perfil == "1" || $perfil == "6" || $perfil == "7") {
                echo '
                <li class="dashboard menuItem"><a href="/?show=dashboard#autoscroll"><i class="fas fa-tachometer-alt"></i><span class="xn-text"> Dashboard</span></a></li> 
                <li class="newpedido menuItem xn-openable">
                    <a><i class="fas fa-scroll"></i></i><span class="xn-text"> Pedidos</span></a>
                    <ul>
                        <li><a href="/?show=home"><span class="fa fa-list"></span> Ver Todos</a></li>
                        <li><a href="/?show=pedido/mesas"><i class="fa fa-table"></i> Mesas</a></li>
                        <li><a href="/?show=pedido/productos">&nbsp;&nbsp;<i class="fas fa-pizza-slice"></i> &nbsp;&nbsp;&nbsp;&nbsp;Productos</a></li>
                    </ul>
                </li>
                <li class="cocina menuItem"><a href="/?show=cocina#autoscroll"><i class="fas fa-fire"></i><span class="xn-text"> Cocina</span></a></li>
                <li class="caja menuItem"><a href="/?show=caja#autoscroll"><i class="fas fa-credit-card"></i><span class="xn-text"> Caja</span></a></li> 
                <li class="inventario menuItem"><a href="/?show=inventory"><i class="fas fa-sort-amount-up"></i><span class="xn-text"> Inventario</span></a></li> 
                <li class="reporte menuItem"><a href="/?show=reportes"><i class="fas fa-chart-pie"></i><span class="xn-text"> Reportes</span></a></li>
                <li class="usuarios menuItem"><a href="/?show=users#autoscroll"><i class="fa fa-users"></i><span class="xn-text"> Usuarios</span></a></li>
                ';
            }
            if ($perfil == "2") {
                echo ' <li class="pedidos"><a href="/?show=home#autoscroll"><span class="fa fa-calendar-minus-o"></span><span class="xn-text"> Pedidos</span></a></li>';
            }
            if ($perfil == "3") {
                echo '  <li class="caja"><a href="/?show=caja#autoscroll"><span class="fa fa-money"></span><span class="xn-text"> Caja</span></a></li>  ';
            }
            if ($perfil == "4") {
                echo ' <li class="entregas"><a href="/?show=entregas"><span class="fa fa-truck"></span><span class="xn-text"> Entregas</span></a></li> ';
            }
            if ($perfil == "5") {
                echo ' ';
            }
            ?>




    </ul>
</div>