<?php

require ("../scripts/database.php");

if ($_POST["idpedido"]) {

    $idpedido = $_POST["idpedido"];

    $query = "SELECT * FROM pedidoproducto pp join productos p on(p.idProducto = pp.idProducto) join menu m on (p.idMenu = m.idMenu) WHERE pp.idPedido= '$idpedido'";
    $result = $conn->query($query);
    if (!$result)
        die($conn->error);

    $rows = $result->num_rows;
    $productos = array();

    for ($i = 0; $i < $rows; $i++) {
        $result->data_seek($i);
        $productos[] = $result->fetch_array(MYSQLI_ASSOC);
    }

    $htmlPedido = '<tr>
                    <th>Descripción de Producto</th>
                    <th class="text-center">Precio Unitario</th>
                    <th class="text-center">Cantidad</th>
                    <th class="text-center">Total</th>
                  </tr>';

    foreach ($productos as $producto) {
        $htmlPedido .= '<tr>
                                <td>
                                    <strong>' . $producto["nombreProducto"] . '</strong>
                                   <p>' . $producto["nombreMenu"] . '</p>
                                    <p>' . $producto["descripcionPedidoproducto"] . '</p>';

        $htmlPedido .= '</td>
                                <td class="text-center">$' . $producto["precioProducto"] . '</td>
                                <td class="text-center">' . $producto["cantidadPedidoproducto"] . '</td>
                                <td class="text-center">$ <span class="totalProducto">' . number_format(($producto["precioProducto"] * $producto["cantidadPedidoproducto"]), 2, '.', '') . '</span></td>
                           </tr>';
    }

    echo $htmlPedido;
}