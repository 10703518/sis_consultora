<?php 
session_start();
require_once("../../smarty/libs//Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$id_funcion = $_REQUEST["id_funcion"];
$id_personal= $_REQUEST["id_personal"];

$smarty=new Smarty;

 $db->debug=false;

$sql = $db->Prepare("SELECT *
					FROM funciones
					WHERE id_funcion =?
					");

$rs = $db->GetAll($sql, array($id_funcion));

$sql1 = $db->Prepare("SELECT * 
					FROM personal
					WHERE id_personal= ?
					AND estado <> '0'
				");
$rs1 = $db->GetAll($sql1, array($id_personal));


$sql2 = $db->Prepare("SELECT * 
					FROM personal
					WHERE id_personal <> ?
					AND estado <> '0'
				");
$rs2 = $db->GetAll($sql2, array($id_personal));

$smarty->assign("funciones", $rs);
$smarty->assign("personal", $rs1);
$smarty->assign("personales", $rs2);

$smarty->assign("direc_css", $direc_css);
$smarty->display("funciones_modificar.tpl");
?>	