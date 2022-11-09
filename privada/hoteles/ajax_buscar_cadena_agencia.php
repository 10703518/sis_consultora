<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = strip_tags(stripslashes($_POST["nombre"]));
$codigo= strip_tags(stripcslashes($_POST["codigo"]));
$nombree = strip_tags(stripcslashes($_POST["nombree"]));
$ciudad = strip_tags(stripcslashes($_POST["ciudad"]));

//$db->debug=true;

if ($nombre or $codigo  or $nombree or $ciudad){
	$sql3 = $db->Prepare("SELECT *
						  FROM cadena_agencia_viajes c, hoteles h

						  WHERE c.id_cadena_agencia_viaje = h.id_hotel
						  AND c.nombre LIKE ?
						  AND h.codigo LIKE ?
						   AND h.nombree LIKE ?
						   AND h.ciudad LIKE ?
						  ");
	$rs3 = $db->GetAll($sql3, array($nombre."%", $codigo."%",$nombree."%",$ciudad."%"));

	if($rs3) {
		echo"<center>
			<table width='60%' border='1'
				<tr>
					<th>NOMBRE</th><th>CODIGO</th><th>NOMBREE</th><th>CIUDAD</th>
					";
				foreach ($rs3 as $k => $fila) {
						 $str = $fila["nombre"];
						 $str1 = $fila["codigo"];
						 $str2 = $fila["nombree"];
						 $str3 = $fila["ciudad"];
					echo"<tr>
							<td align='center'>".resaltar($nombre, $str)."</td>
							<td align='center'>".resaltar($codigo, $str1)."</td>
							<td align='center'>".resaltar($nombree, $str2)."</td>
							<td align='center'>".resaltar($ciudad, $str3)."</td>
					
							
							</tr>";
				}
				echo"</table>
				</center>";
	}else {
		echo"<center><b>  NO EXISTE!!</b></center><br>";
		
	}
}
?>