<?php
session_start();

require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");


$id_consultora = $_REQUEST["id_consultora"];
$nombre = $_POST["nombre"];
$direccion = $_POST["direccion"];
$telefono = $_POST["telefono"];
$correo = $_POST["correo"];
$pagina_web = $_POST["pagina_web"];

$foto1 = $_POST["foto1"];
$nombre_log = $_FILES["foto"]['name'];

$db->debug=true;

$smarty = new Smarty;
//ESTO ES PARA GUARDAR LA FOTO
if ((!empty($_FILES['foto'])) and is_uploaded_file($_FILES['foto']['tmp_name'])){
	copy($_FILES['foto']['tmp_name'],'logos/'.$nombre_log);
	$foto = $_FILES['foto']['name'];
}elseif ($foto1 == "") {
	$foto = '';
	$nombre_log = '';
}else
$nombre_log = $foto1;

$reg = array();
$reg["nombre"] = $nombre;
$reg["direccion"] = $direccion;
$reg["telefono"] = $telefono;
$reg["correo"] = $correo;
$reg["pagina_web"] = $pagina_web;
$reg["foto"] = $nombre_log;
$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("consultora", $reg, "UPDATE", "id_consultora='".$id_consultora."'");

if ($rs1) {
	$smarty->assign("mensaje", "Los datos se modificaron ACTUALIZAR EL SISTEMA!!!!!!!");
	$smarty->assign("direc_css",$direc_css);
	$smarty->display("consultora1.tpl");
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se insertaron!!!!!!!");
	$smarty->assign("direc_css",$direc_css);
	$smarty->display("consultora1.tpl");
}
?>