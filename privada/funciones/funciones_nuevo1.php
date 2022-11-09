<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
/*var_dump($_POST);*/
$id_personal=$_POST["id_personal"];
$descripcion=$_POST["descripcion"];
$funcion= $_POST["funcion"];

/*$hash=password_hash($clave, PASSWORD_DEFAULT);*/

$smarty=new Smarty;
$db->debug=true;
	$reg=array();
	$reg["id_personal"] =$id_personal;
	$reg["descripcion"]=$descripcion;
	$reg["funcion"]=$funcion;
	$reg["fec_insercion"]=date("Y-m-d H:i:s");
	$reg["estado"]='1';
	$reg["usuario"]=$_SESSION["sesion_id_usuario"];
	$rs1=$db->AutoExecute("funciones", $reg, "INSERT");

if ($rs1){
	header("Location: funciones.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insetaron!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("funciones_nuevo1.tpl");
}
?>

