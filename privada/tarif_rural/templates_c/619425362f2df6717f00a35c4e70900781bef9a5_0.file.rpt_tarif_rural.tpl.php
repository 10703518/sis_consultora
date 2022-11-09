<?php
/* Smarty version 3.1.36, created on 2022-11-08 20:42:14
  from 'C:\wamp64\www\sis_consultora\privada\tarif_rural\templates\rpt_tarif_rural.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_636abf26ab4134_30720143',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '619425362f2df6717f00a35c4e70900781bef9a5' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_consultora\\privada\\tarif_rural\\templates\\rpt_tarif_rural.tpl',
      1 => 1665289806,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_636abf26ab4134_30720143 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
">
	
	<?php echo '<script'; ?>
 type="text/javascript">
		function validar(){
			id_empresa = document.formu.id_empresa.value;
			if (document.formu.id_empresa.value == "") {
				alert("Porfavor Seleccione la e´mpresa");
				document.formu.id_empresa.focus();
				return;
			}
			ventanaCalendario = window.open("rpt_tarif_rural1.php?id_empresa=" + id_empresa , "calendario", "width=600, height=550, left=100, top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
		}
	<?php echo '</script'; ?>
>

</head>
<body>
<div class="formu_ingreso_datos">
	<h2>RPT TARIFA RURAL</h2>
	<form method="post" name="formu">
		<p>
			<p>*Seleccione Empresa</p>
			<select name="id_empresa">
				<option value="">--Seleccione--</option>
				<option value="T"> Todos </option>
				<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['empresa']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
					<option value="<?php echo $_smarty_tpl->tpl_vars['r']->value['id_empresa'];?>
"><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</option>
					<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</select>
		</p>
		<p>
			<input type="hidden" name="accion" value="">
			<input type="button" value="Aceptar" onclick="validar();" class="boton">
		</p>
	</form>
</div>
</body>
</html><?php }
}
