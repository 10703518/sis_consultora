<?php
 session_start(); 
 require_once ("../../smarty/libs/Smarty.class.php"); 
 require_once ("../../conexion.php" ); 
 require_once ("../libreria_menu.php");

 $smarty = new Smarty ; 
 //$db->debug = true ; 
 $sql = $db->Prepare("SELECT * 
 					FROM personas p, funciones f 
 					WHERE p.id_personal = f.id_personal
 					AND p.estado <> '0' 
 					AND f.estado <> '0' 
 					ORDER BY (f.id_personal) DESC 
 					");

 	 $rs = $db->GetAll($sql); 

 	 $smarty->assign("personal_funcines",$rs); 
 	 $smarty->assign("direc_css", $direc_css); 
 	 $smarty->display("personal_funciones.tpl");
?>