<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$__id_funcion = $_REQUEST["id_funcion"];

$smarty = new Smarty;
$db->debug = true;

/*$sql = $db->Prepare("SELECT *
	             FROM funciones
                WHERE id_funcion = ?
                AND estado <> '0'
                ");*/
$rs = $db->GetAll($sql,array($__id_funcion));
if (!$rs/*AND $rs2*/){
  $reg = array();
$reg["estado"] = '0';
$reg["usuario"] = $_SESSION["sesion_id_usuario"] ;
$rs1= $db->AutoExecute("funciones", $reg, "UPDATE", "id_funcion='".$__id_funcion."'");
header("Location:funciones.php");
	exit();
}else{
$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("funciones_eliminar.tpl");
}
?>

