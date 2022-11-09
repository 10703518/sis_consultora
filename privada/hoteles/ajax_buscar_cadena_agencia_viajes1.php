<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$id_cadena_agencia_viaje = $_POST["id_cadena_agencia_viaje"];

//$db->debug=true;
$sql3 = $db->Prepare("SELECT *
					  FROM cadena_agencia_viajes
					  WHERE id_cadena_agencia_viaje = ?
					  ");
$rs3 = $db->GetAll($sql3, array($id_cadena_agencia_viaje));

echo"<center>
		<table width='60%' border='1'>
			<tr>
				<th colspan='4'>Datos</th>
			</tr>
		";
	foreach ($rs3 as $k => $fila) {
		echo"<tr>
				<td align='center'>".$fila["nombre"]."</td>
				<td>".$fila["telefonos"]."</td>
				<td>".$fila["pag_web"]."</td>
			</tr>";
	}
	echo"</table>
		 </center>";
?>