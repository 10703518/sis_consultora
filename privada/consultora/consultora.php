<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					FROM consultora
					WHERE id_consultora = 1
					");
$rs = $db->GetAll($sql);
$smarty->assign("consultora", $rs);

$smarty->assign("direc_css",$direc_css);
$smarty->display("consultora.tpl");
?>