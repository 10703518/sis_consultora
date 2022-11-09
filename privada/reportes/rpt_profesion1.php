<?php
session_start();
require_once ("../../smarty/libs/Smarty.class.php"); 
require_once("../../conexion.php");

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
	$sql = $db->Prepare("SELECT * 
 					FROM personal_profesional pp, profesion p
 					WHERE pp.id_profesion = p.id_profesion
 					AND pp.estado <> '0' 
 					AND p.estado <> '0' 
 					ORDER BY (p.id_profesion) DESC 
 					");


$rs = $db->GetAll($sql1, array ($profesion));
}

$sql1=$db->Prepare("SELECT *
	                    FROM consultora
	                    WHERE id_consultora=1
	                    AND estado <>'0'
	                    ");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$foto = $rs1[0]["foto"];
$smarty->assign("foto",$foto);

 $fecha =date("Y-m-d H:i:s");
 $smarty->assign("profesion", $rs);
 $smarty->assign("fecha", $fecha); 
 $smarty->assign("direc_css", $direc_css); 
 $smarty->display("rpt_profesion.tpl");
?>
