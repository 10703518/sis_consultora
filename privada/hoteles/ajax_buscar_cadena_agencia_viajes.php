<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = strip_tags(stripslashes($_POST["nombre"]));
$telefonos = strip_tags(stripcslashes($_POST["telefonos"]));
$pag_web = strip_tags(stripcslashes($_POST["pag_web"]));

//$db->debug=true;

if ($nombre or $telefonos  or $pag_web){
	$sql3 = $db->Prepare("SELECT *
						  FROM cadena_agencia_viajes
						  WHERE nombre LIKE ?
						  AND telefonos LIKE ?
						   AND pag_web LIKE ?
						  ");
	$rs3 = $db->GetAll($sql3, array($nombre."%", $telefonos."%",$pag_web."%"));

	if($rs3) {
		echo"<center>
			<table width='60%' border='1'
				<tr>
					<th>NOMBRE</th><th>TELEFONOS</th><th>PAGINA_WEB</th><th>?</th>
					";
				foreach ($rs3 as $k => $fila) {
						 $str = $fila["nombre"];
						 $str1 = $fila["telefonos"];
						 $str2 = $fila["pag_web"];
					echo"<tr>
							<td align='center'>".resaltar($nombre, $str)."</td>
							<td align='center'>".resaltar($telefonos, $str1)."</td>
							<td align='center'>".resaltar($pag_web, $str2)."</td>
						</td>
							<td align='center'>
								<input type='radio' name='opcion' value='' onClick='buscar_cadena_agencia_viajes1(".$fila["id_cadena_agencia_viaje"].")'>
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
					<td><b>TELEFONO</b></td>
					<td><input type='text' name='telefonos1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>
				<tr>
					<td><b>PAGINA_WEB</b></td>
					<td><input type='text' name='pag_web1' size='10' onkeyup='this.value=this.value.toUpperCase()'></td>
				</tr>

				<tr>
				<td align='center' colspan='2'>
					<input type='button' value='ADICIONAR' onClick='insertar_cadena_agencia_viajes()' >
				</td>
				</tr>
			</table>
			</center>
			";
	}
}
?>