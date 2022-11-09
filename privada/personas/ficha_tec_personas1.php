<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_persona=$_REQUEST["id_persona"];

$smarty = new Smarty;

//$db->debug=true;

$sql1 =$db->Prepare(" SELECT *
	                  FROM personas
	                  WHERE id_persona=?
	                  AND estado<> '0'
                    ");
$rs = $db->GetAll($sql1, array($id_persona));
$sql1 = $db->Prepare("SELECT *
	                 FROM consultora
	                 WHERE id_consultora=1
	                 AND estado<>'0'
	                  ");
$rs1 =$db->GetAll($sql1);
$nombre=$rs1[0]["nombre"];
$foto =$rs1[0]["foto"];
$smarty->assign("foto",$foto);

$smarty->assign("persona",$rs);
$smarty->assign("direc_css",$direc_css);
$smarty->display("ficha_tec_personas1.tpl");
?>