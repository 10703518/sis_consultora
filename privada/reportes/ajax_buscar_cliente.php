<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombres = strip_tags(stripcslashes($_POST["nombres"]));
$apellidos = strip_tags(stripslashes($_POST["apellidos"]));
$ci = strip_tags(stripcslashes($_POST["ci"]));
$razon_social = strip_tags(stripslashes($_POST["razon_social"]));
$nit = strip_tags(stripslashes($_POST["nit"]));
//$db->debug=true;

if ($nombres or $apellidos or $ci or $razon_social or $nit){
	$sql3 = $db->Prepare("SELECT*
						  FROM clientes
						  WHERE nombres LIKE ?
						  AND apellidos LIKE ?
						  AND ci LIKE ?
						  AND razon_social LIKE ?
						  AND nit LIKE ?
						  AND estado <> '0'
						  ");
	$rs3 = $db->GetAll($sql3, array($nombres."%", $apellidos."%", $ci."%", $razon_social."%", $nit. "%"));

	if($rs3) {
		echo"<center>
			<table width='60%' border='1'
				<tr>
					<th>NOMBRES</th><th>APELLIDOS</th><th>CI</th><th>RAZON SOCIAL<th>NIT</th><th>?</th>
					</tr>";
				foreach ($rs3 as $k => $fila) {
						 $str = $fila["nombres"];
						 $str1 = $fila["apellidos"];
						 $str2 = $fila["ci"];
						 $str3 = $fila["razon_social"];
						 $str4 = $fila["nit"];
					echo"<tr>
							<td align='center'>".resaltar($nombres, $str)."</td>
							<td>".resaltar($apellidos, $str1)."</td>
							<td>".resaltar($ci, $str2)."</td>
							<td>".resaltar($razon_social, $str3)."</td>
							<td>".resaltar($nit, $str4)."</td>
							<td align='center'>
								<input type='radio' name='opcion' value='' onClick='mostrar(".$fila["id_cliente"].")'>
							</td>
							</tr>";
				}
				echo"</table>
				</center>";
	}else {
		echo"<center><b> EL CLIENTE NO EXISTE!!</b></center><br>";
		echo"<center>
			<table class='listado'>
				<tr>
					<td><b>NOMBRES</b></td>
					<td><input type='text' name='nombres1' size='10'></td>
				</tr>
				<tr>
					<td><b>APELLIDOS</b></td>
					<td><input type='text' name='apellidos1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>
				<tr>
					<td><b>CI</b></td>
					<td><input type='text' name='ci1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>
				<tr>
					<td><b>RAZON_SOCIAL</b></td>
					<td><input type='text' name='razon_social1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>
				<tr>
					<td><b>NIT</b></td>
					<td><input type='text' name='nit1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>
				<tr>
				<td align='center' colspan='2'>
					<input type='button' value='ADICIONAR CLIENTE' onClick='insertar_cliente()' >
				</td>
				</tr>
			</table>
			</center>
			";
	}
}
?>