<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;
//$db->debug=true;
$sql = $db->Prepare("SELECT *
					FROM cadena_agencia_viajes
	                ");	
$rs = $db->GetAll($sql);

$sql1 = $db->Prepare("SELECT ca.nombre, ho.codigo, ho.nombree, ho.ciudad	
                    FROM cadena_agencia_viajes ca
                    INNER JOIN hoteles ho ON ca.id_cadena_agencia_viaje = ho.id_cadena_agencia_viaje
                    ORDER BY ho.id_cadena_agencia_viaje DESC
                    ");
$rs1 = $db->GetAll($sql1);

$smarty->assign("cadena_agencia_viajes", $rs); 
$smarty->assign("hoteles", $rs1); 
$smarty->assign("direc_css", $direc_css);
$smarty->display("hoteles.tpl"); 
?>
