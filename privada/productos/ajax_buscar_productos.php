<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../../resaltarBusqueda.inc.php");

$nombre = strip_tags(stripslashes($_POST["nombre"]));
$producto = strip_tags(stripslashes($_POST["producto"]));
$caracteristica = strip_tags(stripslashes($_POST["caracteristica"]));
$precio = strip_tags(stripslashes($_POST["precio"]));


//$db->debug=true;
if ($nombre or $producto or $caracteristica or $precio){
	$sql3 = $db->Prepare("SELECT pro.nombre, prod.producto, prod.caracteristica, prod.precio, prod.id_producto
						FROM proveedores  pro, productos prod
						WHERE pro.nombre LIKE ? 
						AND prod.producto LIKE ?
						AND prod.caracteristica LIKE ?
						AND prod.precio LIKE ?
						AND pro.id_proveedor=prod.id_proveedor
						");
	$rs3 = $db->GetAll($sql3, array($nombre."%",$caracteristica."%", $producto."%", $precio."%"
));
$myfile = fopen("demo-sqli_IRENE_NAVA_IBAÑEZ2.txt", "w") or die("Unable to open file!");
fwrite($myfile, $sql3);
fclose($myfile);
	if ($rs3) {
		echo"<center>
			<table class='listado'>
					<tr>
					<th>nombre</th><th>producto</th><th>caracteristica</th><th>precio</th>
					</tr>";
		foreach ($rs3 as $k => $fila) {
			$str = $fila["nombre"];
			$str1 = $fila["producto"];
			$str2 = $fila["caracteristica"];
			$str3 = $fila["precio"];
			echo"
			<td aling='center'>".resaltar($nombre, $str)."</td>
				<td>".resaltar($producto, $str1)."</td>
				<td>".resaltar($caracteristica, $str2)."</td>
				<td>".resaltar($precio, $str3)."</td>
				</tr>";
		}
		echo "</table>
		</center>";
	}else {
		echo "<center><b>PRODUCTO NO EXISTE!!</b></center><br>";
	}
}
?>