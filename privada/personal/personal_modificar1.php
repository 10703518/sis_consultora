<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_personal = $_REQUEST["id_personal"];

$nombres = $_POST["nombres"];
$ap = $_POST["ap"];
$am = $_POST["am"];
$ci = $_POST["ci"];
$direccion = $_POST["direccion"];
$telefono = $_POST["telefono"];
$fecha_inicio = $_POST["fecha_inicio"];
$fecha_fin = $_POST["fecha_fin"];

var_dump( $_POST);
$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["nombres"] = $nombres;
$reg["ap"] = $ap;
$reg["am"] = $am;
$reg["ci"] = $ci;
$reg["direccion"] = $direccion;
$reg["telefono"] = $telefono;
$reg["fecha_inicio"] = $fecha_inicio;
$reg["fecha_fin"] = $fecha_fin;

$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("personal", $reg, "UPDATE", "id_personal='".$id_personal."'");

if ($rs1){
	header("Location: personal.php");
	exit();
}else{
	$smarty->assing("mensaje", "ERROR: Los datos no se modificaron!!!!!!!");
	$smarty->assign("direc_css",$direc_css);
	$smarty->assign("id_personal",$id_personal);
	$smarty->display("personal_modificar1.tpl");
}
?>