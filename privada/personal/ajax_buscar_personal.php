<?php
session_start();/*inicio de sesion*/
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$ci=strip_tags(stripslashes($_POST["ci"]));
$fecha_inicio=strip_tags(stripslashes($_POST["fecha_inicio"]));
$fecha_fin=strip_tags(stripslashes($_POST["fecha_fin"]));

if ($ci or $fecha_inicio or $fecha_fin) {
	$sql3 = $db->Prepare("SELECT *
		                 FROM personal
		                 WHERE ci LIKE ?
		                 AND fecha_inicio LIKE ?
		                 AND fecha_fin LIKE ?
		                 AND estado <> '0'
		");
	$rs3 = $db->GetAll($sql3, array($ci."%", $fecha_inicio."%", $fecha_fin."%"));
	if ($rs3) {
		echo"<center>
		<table class='listado'>
			<tr>
				<th>C.I.</th><th>FECHA_INICIO</th><th>FECHA_FIN</th>
				<th><img src='../../imagenes/modificar.png'></th><th><img src='../../imagenes/borrar.png'></th>
			</tr>";
			foreach($rs3 as $k => $fila){
				$str =  $fila["ci"];
				$str1 = $fila["fecha_inicio"];
				$str2 = $fila["fecha_fin"];
			echo "<tr>
				<td aling='center'>".resaltar($ci, $str)."</td>
				<td>".resaltar($fecha_inicio, $str1)."</td>
				<td>".resaltar($fecha_fin, $str2)."</td>
			<td align='center'>
			<form name='formModif".$fila["id_personal"]."' method='post' action='personal_modificar.php'>
				<input type='hidden' name='id_personal' value='".$fila{'id_personal'}."'>
				<a href='javascript:document.formModif".$fila['id_personal'].".submit();' title='Modificar Personal Sistema'>
					Modificar>>
					</a>
				</form>
			</td>
		<td align='center'>
			<form name='formElimi".$fila["id_personal"]."' method='post' action='personal_eliminar.php'>
				<input type='hidden' name='id_personal' value='".$fila{"id_personal"}."'>
				<a href='javascript:document.formElimi".$fila['id_personal'].".submit();' title='Eliminar Personal Sistema'
				onclick='javascript:return(confirm(\"Desea realmente Eliminar a la Personal\"))';
				 location.href='personal_eliminar.php''>
					Eliminar>>
				</a>
			 </form>
			 </td>
		</tr>";
			}
			echo"</table>
	        </center>";
	        }else{
	        echo"<center><b> LA PERSONAL NO EXISTE!! </b></center><br>";		
		
	}
}
?>