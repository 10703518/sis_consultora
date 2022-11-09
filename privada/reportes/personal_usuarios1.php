<?php
 session_start(); 
 require_once ("../../smarty/libs/Smarty.class.php"); 
 require_once ("../../conexion.php" ); 

 $smarty = new Smarty ; 

 //$db->debug = true ; 

 $sql = $db->Prepare("SELECT * 
 					FROM personal p, funciones f 
 					WHERE p.id_personal = f.id_personal
 					AND p.estado <> '0' 
 					AND f.estado <> '0' 
 					ORDER BY (f.id_personal) DESC 
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

 	 $smarty->assign("personal_funciones" ,$rs); 
 	 $smarty->assign("foto" ,$foto);
 	 $smarty->assign("fecha" ,$fecha);
 	 $smarty->assign("direc_css" , $direc_css); 
 	 $smarty->display("personal_funciones1.tpl");
?>