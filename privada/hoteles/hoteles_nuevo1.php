<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
var_dump($_POST);
$id_cadena_agencia_viaje=$_POST["id_cadena_agencia_viaje"];
$id_hotel=$_POST["id_hotel"];
$codigo=$_POST["codigo"];
$nombree= $_POST["nombree"];
$ciudad= $_POST["ciudad"];

$smarty=new Smarty;
//$db->debug=true;
	$reg=array();
	$reg["id_cadena_agencia_viaje"] =$id_cadena_agencia_viaje;
	$reg["id_hotel"]=$id_hotel;
	$reg["codigo"]=$codigo;
	$reg["nombree"]=$nombree;
	$reg["ciudad"]=$ciudad;
	$reg["fec_insercion"]=date("Y-m-d H:i:s");
	$reg["estado"]='0';
	$reg["usuario"]=$_SESSION["sesion_id_usuario"];
	$rs1=$db->AutoExecute("hoteles", $reg, "INSERT");

if ($rs1){
	header("Location: hoteles.php");
	exit();
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insetaron!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("hoteles_nuevo1.tpl");
}
?>

