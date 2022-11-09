<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;

$sql = $db->Prepare("SELECT *
					FROM proveedores
	                ");	
$rs = $db->GetAll($sql);

$sql1 = $db->Prepare("SELECT *	
                    FROM proveedores pro
                    INNER JOIN productos prod ON pro.id_proveedor = prod.id_proveedor
                    ORDER BY prod.id_proveedor DESC
                    ");
$rs1 = $db->GetAll($sql1);

$smarty->assign("proveedores", $rs); 
$smarty->assign("productos", $rs1); 
$smarty->assign("direc_css", $direc_css);
$smarty->display("productos.tpl"); 
?>
