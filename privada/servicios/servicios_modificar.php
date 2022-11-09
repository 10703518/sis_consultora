<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
$db->debug=true;
$id_servicio = $_REQUEST["id_servicio"];

$smarty = new Smarty;

$sq1 = $db->Prepare("SELECT *
					FROM servicios
					WHERE id_servicio  = ?
					");
$rs = $db->GetAll($sq1, array($id_servicio));
$smarty->assign("servicio",$rs);

$smarty->assign("direc_css",$direc_css);
$smarty->display("servicios_modificar.tpl");

?>