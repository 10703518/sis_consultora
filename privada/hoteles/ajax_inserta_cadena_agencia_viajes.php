<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
//$db->debug=true;
$nombre1 = $_POST["nombre1"];
$telefonos1 = $_POST["telefonos1"];
$pag_web1 = $_POST["pag_web1"];



$reg =array();
$reg["id_consultora"] = 1;//NO TOCAR
$reg["nombre"] = $nombre1;
$reg["telefonos"] = $telefonos1;
$reg["pag_web"] = $pag_web1;
$reg["fec_insercion"] = date("Y-m-d H:i:s");
$reg["estado"] = '0';
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("cadena_agencia_viajes", $reg, "INSERT");

?>