<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
$smarty = new Smarty;


$profesion=$_REQUEST["profesion"];

$smarty = new Smarty;
//$db->debug=true;
if ($profesion=="T"){
	$sql=$db->Prepare("SELECT *
		               FROM personal_profesional
		               WHERE estado<>'0'
		              ");
	$rs=$db->GetAll($sql);

} else {
	$sql = $db->Prepare("SELECT  pp.profesion, p.gestion, pp.id_id_personal_profesional
 					FROM personal_profesional pp, profesion p
 					WHERE pp.id_profesion = p.id_profesion
 					AND pp.estado <> '0' 
 					AND p.estado <> '0' 
 					AND pp.id_profesion LIKE ?
				    AND p.id_profesion LIKE ?
 					ORDER BY (p.id_profesion) DESC 
 					");


$rs = $db->GetAll($sql1, array ($profesion));
}
 $smarty->assign("profesion", $rs);

$smarty->assign("direc_css", $direc_css);
$smarty->display("rpt_profesion.tpl");
?>