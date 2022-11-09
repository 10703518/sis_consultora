<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_cliente = $_REQUEST["id_cliente"];
$nombres = $_POST["nombre"];
$apellidos = $_POST["apellidos"];
$ci = $_POST["ci"];
$razon_social = $_POST["razon_social"];
$nit = $_POST["nit"];

var_dump( $_POST);
$db->debug=false;

$smarty = new Smarty;

$reg = array();
$reg["nombres"] = $nombres;
$reg["apellidos"] = $apellidos;
$reg["ci"] = $ci;
$reg["razon_social"] = $razon_social;
$reg["nit"] = $nit;
$reg["tipo_cliente"] = $_SESSION["sesion_id_tipo_cliente"];
$rs1 = $db->AutoExecute("clientes", $reg, "UPDATE", "id_cliente='".$id_cliente."'");

if ($rs1){
	header("Location: clientes.php");
	exit();
}else{
	$smarty->assing("mensaje", "ERROR: Los datos no se modificaron!!!!!!!");
	$smarty->assign("direc_css",$direc_css);
	$smarty->assign("id_cliente",$id_cliente);
	$smarty->display("clientes_modificar1.tpl");
}
?>