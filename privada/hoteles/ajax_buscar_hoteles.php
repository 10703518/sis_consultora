<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = strip_tags(stripslashes($_POST["nombre"]));
$codigo = strip_tags(stripslashes($_POST["codigo"]));
$nombree = strip_tags(stripslashes($_POST["nombree"]));
$ciudad = strip_tags(stripslashes($_POST["ciudad"]));


//$db->debug=true;
if ($nombre or $codigo or $nombree or $ciudad){
	$sql3 = $db->Prepare("SELECT ca.nombre, ho.codigo, ho.nombree, ho.ciudad
						FROM cadena_agencia_viajes  ca, hoteles ho
						WHERE ca.nombre LIKE ? 
						AND ho.codigo LIKE ?
						AND ho.nombree LIKE ?
						AND ho.ciudad LIKE ?
						AND ca.id_cadena_agencia_viaje=ho.id_cadena_agencia_viaje
						");
	$rs3 = $db->GetAll($sql3, array($nombre."%",$codigo."%", $nombree."%", $ciudad."%"
));
	if ($rs3) {
		echo"<center>
			<table class='listado'>
					<tr>
					<th>nombre</th><th>codigo</th><th>nombree</th><th>ciudad</th>
					</tr>";
		foreach ($rs3 as $k => $fila) {
			$str = $fila["nombre"];
			$str1 = $fila["codigo"];
			$str2 = $fila["nombree"];
			$str3 = $fila["ciudad"];
			echo"
			<td aling='center'>".resaltar($nombre, $str)."</td>
				<td>".resaltar($codigo, $str1)."</td>
				<td>".resaltar($nombree, $str2)."</td>
				<td>".resaltar($ciudad, $str3)."</td>
				</tr>";
		}
		echo "</table>
		</center>";
	}else {
		echo "<center><b>NO EXISTE!!</b></center><br>";
	}
}
?>