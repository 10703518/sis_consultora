<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = strip_tags(stripslashes($_POST["nombre"]));
$lugar = strip_tags(stripslashes($_POST["lugar"]));
$tarifa_carrera = strip_tags(stripcslashes($_POST["tarifa_carrera"]));


//$db->debug=true;

if ($nombre or $lugar or $tarifa_carrera){
	$sql3 = $db->Prepare("SELECT em.nombre, ta.lugar, ta.tarifa_carrera, ta.id_tar_rur
						  FROM  empresa em,tarif_rural ta
						  WHERE em.nombre LIKE ?
						  AND ta.lugar LIKE ?
						  AND ta.tarifa_carrera LIKE ?
						  AND em.id_empresa=ta.id_empresa
						  ");
	$rs3 = $db->GetAll($sql3, array($nombre."%",$lugar."%", $tarifa_carrera."%"));

	if($rs3) {
		echo"<center>
			<table width='60%' border='1'
				<tr>
					<th>NOMBRE DE LA EMPRESA</th><th>LUGAR</th><th>TARIFA DE LA CARRERA</th><th>?</th>
					</tr>";
				foreach ($rs3 as $k => $fila) {
						$str = $fila["nombre"];
						 $str1 = $fila["lugar"];
						 $str2 = $fila["tarifa_carrera"];
					echo"<tr>
							<td align='center'>".resaltar($nombre, $str)."</td>
							<td>".resaltar($lugar, $str1)."</td>
							<td>".resaltar($tarifa_carrera, $str2)."</td>
							<td align='center'>
								<input type='radio' name='opcion' value='' onClick='mostrar(".$fila["id_tar_rur"].")'>
							</tr>";
				}
				echo"</table>
				</center>";
	}else {
		
		echo"<center><b>  NO EXISTE!!</b></center><br>";
		
	}
}
?>