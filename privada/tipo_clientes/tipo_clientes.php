<?php
session_start(); 
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$smarty = new Smarty;


//$db->debug=true;

$sql = $db->Prepare("SELECT *
                   
                    FROM tipo_clientes t
                    INNER JOIN clientes c ON  t.id_cliente = c.id_cliente
                    WHERE t.estado <> '0'
                    AND t.estado <> '0'
                    ORDER BY t.id_tipo_cliente DESC
                    ");

$rs = $db->GetAll($sql);

$smarty->assign("tipo_clientes", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("tipo_clientes.tpl");
?>


              