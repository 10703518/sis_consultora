<?php 
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_tar_rur =$_REQUEST["id_tar_rur"];

$smarty = new Smarty;

//$db->debug=true;
$sql = $db->Prepare("SELECT *
					FROM tarif_rural 
	                ");	
$rs = $db->GetAll($sql);

$sql1 =$db->Prepare("SELECT em.nombre, ta.lugar ,ta.tarifa_carrera
					FROM empresa em, tarif_rural ta
					WHERE ta.id_tar_rur = ?
					AND em.id_empresa=ta.id_empresa
					");
$rs1 = $db->GetAll($sql1, array($id_tar_rur));

$sql2=$db->Prepare("SELECT *
					FROM consultora
					WHERE id_consultora = 1
					AND estado <> '0'
					");
$rs2 = $db->GetAll($sql2);
$nombre = $rs1[0]["nombre"];
$foto = $rs2[0]["foto"];
$smarty->assign("foto",$foto);

$smarty->assign("tarif_rural", $rs1);
$smarty->assign("direc_css", $direc_css);
$smarty->display("ficha_tec_tarif_rural1.tpl");
?>
