<?php
/* Smarty version 3.1.36, created on 2022-10-15 22:43:50
  from 'C:\wamp64\www\sis_consultora\privada\templates\menu_sup.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_634b37a69d5232_26605415',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a1624deda59de103c22a1afd97a46e5b6d3c5f57' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_consultora\\privada\\templates\\menu_sup.tpl',
      1 => 1659712775,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_634b37a69d5232_26605415 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
</head>
<body>
	<div class="cabecera">
		<img src="consultora/logos/<?php echo $_smarty_tpl->tpl_vars['foto']->value;?>
" width="10%">
		<div class="titulo">
			CONSULTORA WEB "<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
"
		</div>
		<div class="usuario">
			Usuario:<b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['usuario'];?>
</b>
			Rol: <b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['rol'];?>
</b>
		</div>
	</div>
</body>
</html><?php }
}
