<?php
/* Smarty version 3.1.36, created on 2022-10-23 00:50:29
  from 'C:\wamp64\www\sis_consultora\privada\productos\templates\productos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_63548fd5718608_54825948',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4b6605b5569a28f2a762d4196147e82c074a74f8' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_consultora\\privada\\productos\\templates\\productos.tpl',
      1 => 1663293529,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63548fd5718608_54825948 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <?php echo '<script'; ?>
 type="text/javascript" src="../../ajax.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 type="text/javascript" src="../js/buscar_productos.js"><?php echo '</script'; ?>
>

  </head>
  <body>
    <table width="100%" border="0">
      <tr>
        <td width="33%">
          <table border="0">
            <tr>
            </tr>            
          </table>
        </td>
        <td align="center" width="33%">
          <h1>PRODUCTOS</h1>          
        </td>
        <td align="right" width="33%">
          <form name="formNuevo" method="post" action="productos_nuevo.php">
            <a href="javascript:document.formNuevo.submit();">
              Nuevo>>>
            </a>            
          </form>          
        </td>
      </tr>      
    </table>

  <center>
    <form action="#" method="post" name="formu">
      <table border="1" class="listado">
        <tr>
            <th>
            <b>NOMBRE</b><br />
          <select name="nombre" onchange="buscar_productos()">
          <option value="">--Seleccione--</option>
          <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['proveedores']->value, 'r');
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
            <b>PRODUCTO</b><br />
            <input type="text" name="producto" value="" size="10" onkeyup="buscar_productos()">
          </th>
          <th>
            <b>CARACTERISTICA</b><br />
            <input type="text" name="caracteristica" value="" size="10" onkeyup="buscar_productos()">
          </th>
          <th>
            <b>PRECIO</b><br />
             <input type="text" name="precio" value="" size="10" onkeyup="buscar_productos()">
          </th>
        </tr>
      </table>
    </form>
  </center>
  <center>
      <div id="productos1">
      <table class="listado">
        <tr>
          <th>NRO</th><th>NOMBRE</th><th>PRODUCTO</th><th>CARACTERISTICA</th><th>PRECIO</th>
        </tr>
        <?php $_smarty_tpl->_assignInScope('b', "1");?>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['productos']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
        <tr>
          <td align="center"> <?php echo $_smarty_tpl->tpl_vars['b']->value;?>
 </td>
          <td> <?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
 </td>
          <td> <?php echo $_smarty_tpl->tpl_vars['r']->value['producto'];?>
</td>
          <td> <?php echo $_smarty_tpl->tpl_vars['r']->value['caracteristica'];?>
 </td>
          <td> <?php echo $_smarty_tpl->tpl_vars['r']->value['precio'];?>
 </td>
          <?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
          <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </tr>
      </table>
  </center>
 </body>
</html><?php }
}
