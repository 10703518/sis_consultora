<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_servicio = $_REQUEST["id_servicio"];
$descripcion = $_POST["descripcion"];
$servicio = $_POST["servicio"];

var_dump( $_POST);
$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["descripcion"] = $descripcion;
$reg["servicio"] = $servicio;

/*$reg["usuario"] = $_SESSION["sesion_id_usuario"];*/
$rs1 = $db->AutoExecute("servicios", $reg, "UPDATE", "id_servicio='".$id_servicio."'");

if ($rs1){
	header("Location: servicios.php");
	exit();
}else{
	$smarty->assing("mensaje", "ERROR: Los datos no se modificaron!!!!!!!");
	$smarty->assign("direc_css",$direc_css);
	$smarty->assign("id_servicio",$id_servicio);
	$smarty->display("servicios_modificar1.tpl");
}
?>