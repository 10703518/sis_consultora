<?php
require_once("adodb/adodb.inc.php");

$direc_css ="../css/colores.css";

$conServidor = "localhost";
$conUsuario = "root";
$conClave = "";
$conBasededatos = "consultoraa";

$db = ADONewConnection("mysqli");
///$db-> debug =true;
$conex = $db->Connect($conServidor, $conUsuario, $conClave, $conBasededatos);
$db->Execute("SET NAMES 'utf8'");
?>