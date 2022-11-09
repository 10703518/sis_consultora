<?php
/* Smarty version 3.1.36, created on 2022-10-23 00:05:52
  from 'C:\wamp64\www\sis_consultora\privada\claves\templates\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_63548560698778_17009635',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '46740bcb02d2d1f02905dfea1b8163ac63eae1c2' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_consultora\\privada\\claves\\templates\\index.tpl',
      1 => 1649276810,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63548560698778_17009635 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<head>
	<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
	<?php echo '<script'; ?>
 type="text/javascript">
		function refrescar (){
			var p = window.parent;
			p.location.href='../';
		}
	<?php echo '</script'; ?>
>
	
</head>
<body ONLOAD="self.setTimeout('refrescar()',5000);"> 
	<center>
		<h1><?php echo $_smarty_tpl->tpl_vars['mensage']->value;?>
</h1>
		<h3 style="color:red;"><?php echo $_smarty_tpl->tpl_vars['nom_completo']->value;?>
</h3>
		<br>
		<h1><?php echo $_smarty_tpl->tpl_vars['mensage1']->value;?>
</h1>
	</center>
</body>
</html><?php }
}
