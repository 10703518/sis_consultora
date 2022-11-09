<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = strip_tags(stripslashes($_POST["nombre"]));
$telefono = strip_tags(stripcslashes($_POST["telefono"]));

$db->debug=true;

if ($nombre or $telefono){
	$sql3 = $db->Prepare("SELECT *
						  FROM proveedores
						  WHERE nombre LIKE ?
						  AND telefono LIKE ?
						  ");
	$rs3 = $db->GetAll($sql3, array($nombre."%", $telefono."%"));

	if($rs3) {
		echo"<center>
			<table width='60%' border='1'
				<tr>
					<th>NOMBRE</th><th>TELEFONO</th><th>?</th>
					</tr>";
				foreach ($rs3 as $k => $fila) {
						 $str = $fila["nombre"];
						 $str1 = $fila["telefono"];
					echo"<tr>
							<td align='center'>".resaltar($nombre, $str)."</td>
							<td align='center'>".resaltar($telefono, $str1)."</td>
						</td>
							<td align='center'>
								<input type='radio' name='opcion' value='' onClick='buscar_proveedor(".$fila["id_proveedor"].")'>
							</td>
							</tr>";
				}
				echo"</table>
				</center>";
	}else {
		echo"<center><b>  NO EXISTE!!</b></center><br>";
		echo"<center>
			<table class='listado'>
				<tr>
					<td><b>NOMBRE</b></td>
					<td><input type='text' name='nombre1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>
				<tr>
					<td><b>DIRECCION</b></td>
					<td><input type='text' name='direccion1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>
				<tr>
					<td><b>TELEFONO</b></td>
					<td><input type='text' name='telefono1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>

				<tr>
				<td align='center' colspan='2'>
					<input type='button' value='ADICIONAR' onClick='insertar_proveedor()' >
				</td>
				</tr>
			</table>
			</center>
			";
	}
}
?>