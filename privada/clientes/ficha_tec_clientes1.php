<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_cliente=$_REQUEST["id_cliente"];

$smarty = new Smarty;

//$db->debug=true;

$sql1 =$db->Prepare(" SELECT *
	                  FROM clientes
	                  WHERE id_cliente=?
	                  AND estado<> '0'
                    ");
$rs = $db->GetAll($sql1, array($id_cliente));
$sql1 = $db->Prepare("SELECT *
	                 FROM consultora
	                 WHERE id_consultora=1
	                 AND estado<>'0'
	                  ");
$rs1 =$db->GetAll($sql1);
$nombre=$rs1[0]["nombre"];
$foto =$rs1[0]["foto"];
$smarty->assign("foto",$foto);

$smarty->assign("cliente",$rs);
$smarty->assign("direc_css",$direc_css);
$smarty->display("ficha_tec_clientes1.tpl");
?>