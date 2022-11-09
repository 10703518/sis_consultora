<?php
session_start();/*inicio de sesion*/
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");

$id_consultora = $_POST["id_consultora"];
$nombre= $_POSTT["nombre"];
$direccion = $_POST["direccion"];
$telefono = $_POST["telefono"];
$correo= $_POST["correo"];
$pagina_web= $_POST["pagina_web"];

$foto= $_POST["foto1"];
$nombre_log=$FILES['foto']['name']

//$db->debug=true;
$smarty = new Smarty;

//esto es para guardar la foto
if((!empty($_FILES['foto'])) and is_uploaded_file($_FILES['foto']['tmp_name'])){
copy($_FILES['foto']['tmp_name'],'logos/'.$__n);
$logo_panaderia = $_FILES['logo_panaderia']['name'];
}elseif($__logo_panaderia1 == ""){
  $logo_panaderia = '';
  $__nombre_log = '';
}else
$__nombre_log = $__logo_panaderia1;

$reg = array();
$reg["nombre"] = $nombre;
$reg["direccion"] = $direccion;
$reg["telefono"] = $telefono;
$reg["correo"] = $correo;
$reg["pagina_web"] = $pagina_web;
$reg["foto"] = $foto;

$reg["usuario"] = $_SESSION["sesion_id_usuario"];
$rs1 = $db->AutoExecute("consultora", $reg, "UPDATE", "id_consultora='".$_id_consultora"'");
if($rs1){
   $smarty->assign("mensaje", "los datos se modificaron ACTUALIZAR EL SISTEMA!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("consultora1.tpl");
}else{
	$smarty->assign("mensaje", "ERROR: Los datos no se modificaron!!!!!!!!!!");
	$smarty->assign("direc_css", $direc_css);
	$smarty->display("consultora1.tpl");
}
?>









$smarty = new Smarty;

//$db->debug = true;

$sql3 = $db->Prepare("SELECT *
                    FROM panaderia
                    WHERE  id_panaderia = 1
                    ");

$rs = $db->GetAll($sq1);
$smarty->assign("panaderia", $rs);

$smarty->assign("direc_css",$direc_css);
$smarty->display("panaderia.tpl");
?>