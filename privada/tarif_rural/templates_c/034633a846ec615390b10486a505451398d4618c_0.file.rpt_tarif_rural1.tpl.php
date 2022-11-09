<?php
/* Smarty version 3.1.36, created on 2022-11-08 20:42:20
  from 'C:\wamp64\www\sis_consultora\privada\tarif_rural\templates\rpt_tarif_rural1.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_636abf2c466532_32243804',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '034633a846ec615390b10486a505451398d4618c' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_consultora\\privada\\tarif_rural\\templates\\rpt_tarif_rural1.tpl',
      1 => 1665287542,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_636abf2c466532_32243804 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
  <?php echo '<script'; ?>
 type="text/javascript">
    var ventanaCalendario=false
    function imprimir(){
      if (confirm(' Desea imprimir? ')){
        window.print();
      }
    }
  <?php echo '</script'; ?>
>
</head>
<body style='cursor: pointer;cursor:hand' onclick='imprimir()'>
  <table width="100%" border="0">
    <tr>
      <td>
        <img src="../consultora/logos/<?php echo $_smarty_tpl->tpl_vars['foto']->value;?>
" width="70%">
      </td>
      <td align="center" width="80%">
        <h1>  TARIFA RURAL </h1>
      </td>
    </tr>
  </table>
  <br>
  <center>
    <table border="1" cellspacing="0">
      <tr>
        <th>NRO</th><th>NOMBRE</th><th>LUGAR</th><th>TARIFA CARRETERA</th>
      </tr>
      <?php $_smarty_tpl->_assignInScope('b', "1");?>
      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['empresa']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
      <tr>
        <td align= "center"><?php echo $_smarty_tpl->tpl_vars['b']->value;?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['r']->value['lugar'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['r']->value['tarifa_carrera'];?>
</td>


        <?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
      </tr>
    </table>
    <br><br>
    <b>Fecha:</b> <?php echo $_smarty_tpl->tpl_vars['fecha']->value;?>

  </center>
</body>
</html>

<?php }
}
