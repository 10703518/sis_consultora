<?php
/* Smarty version 3.1.36, created on 2022-11-08 20:42:39
  from 'C:\wamp64\www\sis_consultora\privada\tarif_rural\templates\ficha_tec_tarif_rural1.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_636abf3f805534_70242135',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '01514954e7368fc83395c41405f3fd18bb1879fa' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_consultora\\privada\\tarif_rural\\templates\\ficha_tec_tarif_rural1.tpl',
      1 => 1665286388,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_636abf3f805534_70242135 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<?php echo '<script'; ?>
 type="text/javascript">
		var ventanaCalendario=false
		function imprimir(){
			if(confirm(' Desea imprimir ?')){
				window.print();
			}
		}
	<?php echo '</script'; ?>
>
</head>
<body style='cursor:pointer;cursor: hand' onclick="imprimir();">
	<table width="100%" border="0">
		<tr>
			<td>
				<img src="../consultora/logos/<?php echo $_smarty_tpl->tpl_vars['foto']->value;?>
" width="70%">
			</td>
			<td align="center" width="80%">
				<h1> FICHA TECNICA EMPRESA</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellpadding="0">
			<tr>
				<td>
					<table border="0">
						<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tarif_rural']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
						<tr>
							<th align="right">NOMBRE</th><th>:</th>
							<td><input type="text" name="nombre" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">LUGAR</th><th>:</th>
							<td><input type="text" name="lugar" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['lugar'];?>
" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">TARIFA</th><th>:</th>
							<td><input type="text" name="tarifa_carrera" value="<?php echo $_smarty_tpl->tpl_vars['r']->value['tarifa_carrera'];?>
" disabled=""> </td>
						</tr>
						<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</table>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>
<?php }
}
