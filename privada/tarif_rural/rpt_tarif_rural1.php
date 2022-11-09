<?php
session_start();
require_once ("../../smarty/libs/Smarty.class.php"); 
require_once("../../conexion.php");

$id_empresa=$_REQUEST["id_empresa"];

$smarty = new Smarty;
//$db->debug=true;
if ($id_empresa=="T"){
	$sql = $db->Prepare("SELECT  ep.nombre, ta.lugar,ta.tarifa_carrera
			FROM empresa ep, tarif_rural ta
			WHERE ep.id_empresa=ta.id_empresa
		              ");
	$rs=$db->GetAll($sql);

} else {
$sql = $db->Prepare("SELECT  ep.nombre, ta.lugar,ta.tarifa_carrera
			FROM empresa ep, tarif_rural ta
			WHERE ep.id_empresa=?
			AND ep.id_empresa=ta.id_empresa
 					");
$rs = $db->GetAll($sql, array($id_empresa));
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
 $smarty->assign("empresa", $rs);
 $smarty->assign("fecha", $fecha); 
 $smarty->assign("direc_css", $direc_css); 
 $smarty->display("rpt_tarif_rural1.tpl");
?>
