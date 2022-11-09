<?php
session_start(); 
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db->debug=true;

contarRegistros($db,"servicios");

paginacion("servicios.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
                      FROM servicios
                      WHERE estado <> '0'
                      AND id_servicio > 0
                      ORDER BY id_servicio DESC
                      LIMIT ? OFFSET ?
                      ");
$smarty->assign("servicios", $db->GetAll($sql3, array($nElem, $regIni)));


$smarty->assign("direc_css", $direc_css);
$smarty->display("servicios.tpl");
?>