<?php
session_start(); 
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;


//$db->debug=true;

$sql = $db->Prepare("SELECT *
                  FROM funciones f
                    INNER JOIN personal p ON  f.id_personal = p.id_personal
                    WHERE f.estado <> '0'
                    AND p.estado <> '0'
                    ORDER BY p.id_personal DESC
                    ");
$rs = $db->GetAll($sql);

$smarty->assign("funciones", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("funciones.tpl");
?>