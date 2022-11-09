<?php
/* Smarty version 3.1.36, created on 2022-11-08 20:42:25
  from 'C:\wamp64\www\sis_consultora\privada\tarif_rural\templates\ficha_tec_tarif_rural.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_636abf3109a9b1_45453622',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fa4ebcc70e827b87b491c4f389365004ee4ed494' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_consultora\\privada\\tarif_rural\\templates\\ficha_tec_tarif_rural.tpl',
      1 => 1665286135,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_636abf3109a9b1_45453622 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
</html>
<html lang = "esp">
	<head>
		<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
		<meta charset="utf-8">
		<?php echo '<script'; ?>
 type="text/javascript" src="../../ajax.js"><?php echo '</script'; ?>
>
		<?php echo '<script'; ?>
 type="text/javascript">
			function buscar() {
			var d1, d2, d3, contenedor, ajax, url, param;
				contenedor = document.getElementById('tarif_rural1');
				d1 = document.formu.nombre.value;
				d2 = document.formu.lugar.value;
				d3 = document.formu.tarifa_carrera.value;
				ajax = nuevoAjax();
				url = "ajax_tarifa_rural.php"
				param = "nombre="+d1+"&lugar="+d2+"&tarifa_carrera="+d3;
				//alert(param);
				ajax.open("POST", url, true);
				ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				ajax.onreadystatechange = function() {
					if (ajax.readyState == 4) {
						contenedor.innerHTML = ajax.responseText;
					}
				}
				ajax.send(param);
			}

			function mostrar(id_tar_rur) {
			var d1, ventanaCalendario;
			d1 = id_tar_rur;
			//alert(id_tarea);
			ventanaCalendario = window.open("ficha_tec_tarif_rural1.php?id_tar_rur=" + d1 , "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		<?php echo '</script'; ?>
>
	</head>
	<body>
		<!---------BUSCAODR----------->
		<h1>
				FICHA TECNICA DE TARIFAS
			</h1>
		<center>
		<form action="#" method="post" name="formu">
			<table border="1" class="listado">
				<tr>
					<th>
            <b>EMPRESA</b><br />
          <select name="nombre" onchange="buscar()">
          <option value="">--Seleccione--</option>
          <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['empresa']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
          <option value="<?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
"><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</option>
          <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </select>
          </th>
					<th>
						<b>LUGAR</b><br />
						<input type="text" name="lugar" value="" size="10" onkeyup="buscar()">
					</th>
					<th>
						<b>TARIFA DE LA CARRETERA</b><br />
						<input type="text" name="tarifa_carrera" value="" size="10" onkeyup="buscar()">
					</th>
				</tr>
			</table>
		</form>
	</center>
		<!-----------BUSCADOR------------->
		<center>
			<div id="tarif_rural1">
			</div>
		</center>
	</body>
</html>
<?php }
}
