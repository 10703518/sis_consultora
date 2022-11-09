<?php
 session_start(); 
 require_once ("../../smarty/libs/Smarty.class.php"); 
 require_once ("../../conexion.php" ); 

 $smarty = new Smarty ; 

 //$db->debug = true ; 

 $sql = $db->Prepare("SELECT * 
 					FROM personas p, usuarios u 
 					WHERE p.id_persona = u.id_persona
 					AND p.estado <> '0' 
 					AND u.estado <> '0' 
 					ORDER BY (u.id_persona) DESC 
 					");

 	 $rs = $db->GetAll($sql); 

 	 $sql1 = $db->Prepare("SELECT *
 	 					FROM consultora
 	 					WHERE id_consultora= 1
 	 					AND estado <> '0'
 	 					");
 	 $rs1 = $db->GetAll($sql1);
 	 $nombre = $rs1[0]["nombre"];
 	 $foto = $rs1[0]["foto"];

 	 $fecha= date("Y-m-d H:i:s");

 	 $smarty->assign("personas_usuarios" ,$rs); 
 	 $smarty->assign("foto" ,$foto);
 	 $smarty->assign("fecha" ,$fecha);
 	 $smarty->assign("direc_css" , $direc_css); 
 	 $smarty->display("personas_usuarios1.tpl");
?>