<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

var_dump($_POST);

$id_personal=$_POST["id_personal"];
$id_funcion=$_POST["id_funcion"];
$descripcion=$_POST["descripcion"];
$funcion=$_POST["funcion"];



$db->debug=false;

$smarty=new Smarty;

$reg=array();
$reg["id_personal"] =$id_personal;
$reg["descripcion"]=$descripcion;
$reg["funcion"]=$funcion;
$reg["usuario"]=$_SESSION["sesion_id_usuario"];
$rs1=$db->AutoExecute("funciones", $reg, "UPDATE", "id_funcion='".$id_funcion."'");

if ($rs1){
	header("Location:funciones.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se modificaron!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->assign("id_funcion", $id_funcion);
	$smarty->display("funciones_modificar1.tpl");
}
?>

