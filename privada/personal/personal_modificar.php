<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$id_personal = $_REQUEST["id_personal"];

$smarty = new Smarty;

$sq1 = $db->Prepare("SELECT *
					FROM personal
					WHERE id_personal = ?
					");
$rs = $db->GetAll($sq1, array($id_personal));
$smarty->assign("personal",$rs);

$smarty->assign("direc_css",$direc_css);
$smarty->display("personal_modificar.tpl");

?>