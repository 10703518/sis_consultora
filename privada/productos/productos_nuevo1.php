<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
var_dump($_POST);
$id_proveedor=$_POST["id_proveedor"];
$producto=$_POST["producto"];
$caracteristica= $_POST["caracteristica"];
$precio= $_POST["precio"];

$smarty=new Smarty;
$db->debug=true;
	$reg=array();
	$reg["id_proveedor"] =$id_proveedor;
	$reg["producto"]=$producto;
	$reg["caracteristica"]=$caracteristica;
	$reg["precio"]=$precio;
	$reg["fec_insercion"]=date("Y-m-d H:i:s");
	$reg["estado"]='0';
	$reg["usuario"]=$_SESSION["sesion_id_usuario"];
	$rs1=$db->AutoExecute("productos", $reg, "INSERT");

if ($rs1){
	header("Location: productos.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insetaron!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("productos_nuevo1.tpl");
}
?>

