<?php
session_start();
require_once ("../../smarty/libs/Smarty.class.php"); 
require_once("../../conexion.php");

$funcion=$_REQUEST["funcion"];

$smarty = new Smarty;
//$db->debug=true;
if ($funcion=="T"){
	$sql=$db->Prepare("SELECT pe.nombres,fu.funcion,fu.descripcion
		               FROM funciones fu INNER JOIN personal pe ON fu.id_personal=pe.id_personal
		               WHERE fu.estado<>'0'
		               AND pe.estado<>'0'
		              ");
	$rs=$db->GetAll($sql);

} else {
 $sql1 = $db->Prepare("SELECT pe.nombres,fu.funcion,fu.descripcion
		               FROM funciones fu INNER JOIN personal pe ON fu.id_personal=pe.id_personal
                       WHERE fu.funcion= ?
		               AND fu.estado<>'0'
		               AND pe.estado<>'0'
 					");
$rs = $db->GetAll($sql1, array ($funcion));
}

$sql1=$db->Prepare("SELECT *
	                FROM consultora
					WHERE id_consultora = 1
					AND estado <> '0'	
					");

$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$foto = $rs1[0]["foto"];
$smarty->assign("foto",$foto);

 $fecha =date("Y-m-d H:i:s");
 $smarty->assign("funciones1", $rs);
 $smarty->assign("fecha", $fecha); 
 $smarty->assign("direc_css", $direc_css); 
 $smarty->display("rpt_funciones1.tpl");
?>
