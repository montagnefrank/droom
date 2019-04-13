<?php

/////////////////////////////////////////////////////////////////////////////// USERS CONTROL
/////////////////////////////////////////////////////////////////////////////////////////////DEBUG EN PANTALLA
//error_reporting(E_ALL);
//ini_set('display_errors', 1);


require ("../../assets/scripts/database.php");
session_start();

if (isset($_POST['deleteUser'])) {
    $val_select = "DELETE FROM usuario WHERE idUsuario = '" . $_POST['deleteid'] . "'";
    $val_result = $conn->query($val_select) or die($conn->error);

    echo " Usuario Eliminado exitosamente. ";
}

if (isset($_POST['addnewUser'])) {

    $select = "SELECT nombreUsuario FROM usuario WHERE nombreUsuario = '" . $_POST['userUsuario'] . "';";
    $result = $conn->query($select) or die($conn->error);
    $row_cnt = $result->num_rows;

    if ($row_cnt > 0) {
        $msg_menu = " Ya existe el usuario en sistema, por favor seleccione un nombre de usuario diferente.";
        echo $msg_menu;
    } else {
        $val_select = "INSERT INTO usuario(passwordUsuario,nombreUsuario,idPerfil,cedulaUsuario,fechaingresoUsuario,nombresUsuario,apellidosUsuario,idEstablecimiento,statusUsuario,temaUsuario) "
                . "VALUES  ('" . $_POST['passUsuario'] . "','" . $_POST['userUsuario'] . "','" . $_POST['rolUsuario'] . "','" . $_POST['cedulaUsuario'] . "','" . date("Y-m-d") . "','" . $_POST['nombreUsuario'] . "','" . $_POST['apellidoUsuario'] . "','" . $_POST['estUsuario'] . "','1','dark')";
        $val_result = $conn->query($val_select) or die($conn->error);

        if ($val_result) {
            $msg_menu = " Nuevo Usuario ingresado al sistema exitosamente ";
            echo $msg_menu;
        } else {
            $msg_menu = " Error al crear el usuario, consulte con su departamento de soporte. ";
            echo $msg_menu;
        }
    }
}

if (isset($_POST['updateUser'])) {

    $val_select = "UPDATE usuario SET "
            . "nombreUsuario = '" . $_POST['userUsuario'] . "', "
            . "nombresUsuario = '" . $_POST['nombreUsuario'] . "', "
            . "apellidosUsuario = '" . $_POST['apellidoUsuario'] . "', "
            . "cedulaUsuario = '" . $_POST['cedulaUsuario'] . "' , "
            . "idEstablecimiento = '" . $_POST['estUsuario'] . "', "
            . "idPerfil = '" . $_POST['rolUsuario'] . "' "
            . "WHERE idUsuario = '" . $_POST['idUsuario'] . "'";
    $val_result = $conn->query($val_select) or die($conn->error);

    if ($val_result) {
        $msg_menu = " Se han actualizados los  datos del usuario exitosamente ";
        echo $msg_menu;
    } else {
        $msg_menu = " Error al actualizar el usuario, consulte con su departamento de soporte. ";
        echo $msg_menu;
    }
}

if (isset($_POST['getUsers'])) {
    $menu_select = "SELECT * FROM usuario";
    $menu_result = $conn->query($menu_select) or die($conn->error);
    $idlist = '';
    while ($menu_row = $menu_result->fetch_array(MYSQLI_BOTH)) {
        if ($menu_row['statusUsuario'] == 1) {
            $checked = 'checked';
        } else {
            $checked = '';
        }
        $isavatar = "../../api/assets/img/users/" . $menu_row['idUsuario'] . ".jpg";
        if (file_exists($isavatar)) {
            $imgusuario = "api/assets/img/users/" . $menu_row['idUsuario'];
        } else {
            $imgusuario = "api/assets/img/users/default";
        }
        $rol = getrol($menu_row['idPerfil']);
        echo '   
                <div class="col-md-3">
                    <div class="panel panel-default radiopanel">
                        <div class=" profile bg-primary panelradious">
                        <div class="col col-xs-4 ">
                           
                            <img class="roundimg" src="' . $imgusuario . '.jpg" alt="' . $menu_row['nombreUsuario'] . '">                           
                            <div class="myname">' . $menu_row['nombreUsuario'] . '</div>

                        </div>                        
                        <div class="col col-xs-4"></div>
                        <div class="col col-xs-4 ">
                            <a href="#" class="btn btn-default btn-condensed mybtn" onClick="notyConfirm(' . $menu_row['idUsuario'] . ');"><span class="fa fa-times"></span></a>    
                            <a href="#" class="btn btn-default btn-condensed mybtn edituser_btn"><span class="fa fa-edit"></span></a>    
                            <label class="switch myswich edituserStatus">
                                <input type="checkbox" class="switch" name="' . $menu_row['idUsuario'] . '_check"  value="1" ' . $checked . '/>
                                <span></span>
                            </label>                                
                                 
                        </div>

                             
                        </div>
                        <div class="panel-body list-group">
                            <a href="#" class="list-group-item "><span class="help-block txtblack">Rol: ' . $rol . '</span></a>
                            <a href="#" class="list-group-item "><span class="help-block txtblack">Cédula: ' . $menu_row['cedulaUsuario'] . '</span></a>    
                            <div class="list-group-item myfooter bg-primary"><span class="help-block txtwhite"><span>Establecimiento : ' . getestableciminto($menu_row['idEstablecimiento']) . '</span></span></div>
                        </div>   
                        <div class="hidethis_force idUsuario_cont">' . $menu_row['idUsuario'] . '</div>
                        <div class="hidethis_force userUsuario_cont">' . $menu_row['nombreUsuario'] . '</div>
                        <div class="hidethis_force nombreUsuario_cont">' . $menu_row['nombresUsuario'] . '</div>
                        <div class="hidethis_force apellidoUsuario_cont">' . $menu_row['apellidosUsuario'] . '</div>
                        <div class="hidethis_force cedulaUsuario_cont">' . $menu_row['cedulaUsuario'] . '</div>
                        <div class="hidethis_force estUsuario_cont">' . $menu_row['idEstablecimiento'] . '</div>
                        <div class="hidethis_force rolUsuario_cont">' . $menu_row['idPerfil'] . '</div>
                        <div class="hidethis_force imgUsuario_cont">' . $imgusuario . '</div>
                    </div>
                </div>
             ';
    }
}

if (isset($_POST['statusUser'])) {

    $val_select = "UPDATE usuario SET statusUsuario = '" . $_POST['loginUsuario'] . "' WHERE idUsuario = '" . $_POST['idUsuario'] . "'";
    $val_result = $conn->query($val_select) or die($conn->error);


    if ($val_result) {
        $msg_logo .= " Se ha cambiado el estatus del usuario <b>" . $_POST['nombreUsuario'] . "</b>.";
        echo $msg_logo;
    } else {
        echo " No pudimos cambiar el estatus del usuario. Intente de nuevo ";
    }
}

if (isset($_POST['restartPass'])){
     $val_select = "UPDATE usuario SET passwordUsuario = 'burtontech1234' WHERE idUsuario = '" . $_POST['idUsuario'] . "'";
    $val_result = $conn->query($val_select) or die($conn->error);


    if ($val_result) {
        $msg_logo .= " Se ha restablesido la contraseña del usuario <b>" . $_POST['nombreUsuario'] . " exitosamente, la contraseña es ahora burtontech1234 </b>.";
        echo $msg_logo;
    } else {
        echo " No pudimos restablecer la contraseña del usuario. Intente de nuevo ";
    }
}

//OBTENEMOS EL NOMRBE DEL ROL SEGUN SU ID
function getrol($rol) {
    if ($rol == 1) {
        $nombreRol = "ADMINISTRADOR DE LOCAL";
        return $nombreRol;
    }
    if ($rol == 2) {
        $nombreRol = "SALONERO";
        return $nombreRol;
    }
    if ($rol == 3) {
        $nombreRol = "CAJERO CERTIFIDO";
        return $nombreRol;
    }
    if ($rol == 4) {
        $nombreRol = "MENSAJERO / REPARTIDOR";
        return $nombreRol;
    }
    if ($rol == 5) {
        $nombreRol = "CONSERJE";
        return $nombreRol;
    }
    if ($rol == 6) {
        $nombreRol = "GERENTE / AFINES";
        return $nombreRol;
    }
    if ($rol == 7) {
        $nombreRol = "SOPORTE TECNICO";
        return $nombreRol;
    }
}
function getestableciminto($establecimiento) {
    if ($establecimiento == 1) {
        $nombreRol = "Quito Sur";
        return $nombreRol;
    }
    if ($establecimiento == 2) {
        $nombreRol = "Villaflora";
        return $nombreRol;
    }
    if ($establecimiento == 3) {
        $nombreRol = "cotocollao";
        return $nombreRol;
    }
    
}

?>