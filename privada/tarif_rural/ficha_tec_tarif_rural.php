<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;
$sql = $db->Prepare("SELECT *
					FROM empresa
	                ");	
$rs = $db->GetAll($sql);

//$db->debug = true;}

$smarty->assign("empresa", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("ficha_tec_tarif_rural.tpl");
?>