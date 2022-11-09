<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$nombres = $_POST["nombres"];
$apellidos = $_POST["apellidos"];
$ci = $_POST["ci"];
$razon_social = $_POST["razon_social"];
$nit = $_POST["nit"];

//var_dump( $_POST);
//$db->debug=true;

$smarty = new Smarty;

$reg = array();
$reg["id_consultora"] = 1;
$reg["nombres"] = $nombres;
$reg["apellidos"] = $apellidos;
$reg["ci"] = $ci;
$reg["razon_social"] = $razon_social;
$reg["nit"] = $nit;
$reg["fec_insercion"] = date("Y-m-d H:i:s");
$reg["estado"] = '1';
$reg["tipo_cliente"] = $_SESSION["sesion_id_tipo_cliente"];
$rs1 = $db->AutoExecute("clientes", $reg, "INSERT");

if ($rs1){
	header("Location: clientes.php");
	exit();
}else{
	$smarty->assing("mensaje", "ERROR: Los datos no se insertaron!!!!!!!");
	$smarty->assign("direc_css",$direc_css);
	$smarty->display("clientes_nuevo1.tpl");
}
?>