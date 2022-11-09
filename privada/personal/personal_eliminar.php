<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");

$id_personal = $_POST['id_personal'];

$smarty = new Smarty;

$db->debug=true;

$sql = $db->Prepare("SELECT *
	                   FROM funciones
	                   WHERE id_personal= ?	
	                   AND estado <> '0'	                
	                   ");
$rs = $db->GetAll($sql, array($id_personal));

if (!$rs){
	$reg =array();
	$reg["estado"] ='0';
    $reg["usuario"] = $_SESSION['sesion_id_usuario'];
    $reg["fec_modificacion"]= date("Y-m-d H:i:s");
	$rs1 = $db->AutoExecute("personal", $reg, "UPDATE", "id_personal='".$id_personal."'");
	header("Location:personal.php");
	exit();


}else {

$smarty->assign("mensaje", "ERROR: Los datos no se eliminaron!!!!!!!!!!!");
$smarty->assign("direc_css", $direc_css);
$smarty->display("personal_eliminar.tpl");

}
?>

