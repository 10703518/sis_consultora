<?php
/* Smarty version 3.1.36, created on 2022-10-15 22:43:53
  from 'C:\wamp64\www\sis_consultora\privada\hoteles\templates\hoteles.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_634b37a944d3c6_98574890',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5bf0520669c9d8db338e848cb22b93b074f00c13' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_consultora\\privada\\hoteles\\templates\\hoteles.tpl',
      1 => 1665711075,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_634b37a944d3c6_98574890 (Smarty_Internal_Template $_smarty_tpl) {
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
 type="text/javascript" src="../js/buscar_hoteles.js"><?php echo '</script'; ?>
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
          <h1>HOTELES</h1>          
        </td>
        <td align="right" width="33%">
          <form name="formNuevo" method="post" action="hoteles_nuevo.php">
            <a href="javascript:document.formNuevo.submit();">
              Nuevo>>>
            </a>            
          </form>          
        </td>
      </tr>      
    </table>
<!-----INICIO BUSCADOR----->
  <center>
    <form action="#" method="post" name="formu">
      <table border="1" class="listado">
        <tr>
            <th>
            <b>cadena_agencia_viaje</b><br />
          <select name="nombre" onchange="buscar_hoteles()">
          <option value="">--Seleccione--</option>
          <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cadena_agencia_viajes']->value, 'r');
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
            <b>CODIGO</b><br />
            <input type="text" name="codigo" value="" size="10" onkeyup="buscar_hoteles()">
          </th>
          <th>
            <b>NOMBRE</b><br />
            <input type="text" name="nombree" value="" size="10" onkeyup="buscar_hoteles()">
          </th>
          <th>
            <b>CIUDAD</b><br />
             <input type="text" name="ciudad" value="" size="10" onkeyup="buscar_hoteles()">
          </th>
        </tr>
      </table>
    </form>
  </center>
  <!-------FIN BUSCADOR------>
  
  <center>
      <div id="hoteles1">
      <table class="listado">
        <tr>
          <th>NRO</th><th>cadena_agencia_viajes</th><th>codigo</th><th>nombree</th><th>ciudad</th>
        </tr>
        <?php $_smarty_tpl->_assignInScope('b', "1");?>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['hoteles']->value, 'r');
$_smarty_tpl->tpl_vars['r']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['r']->value) {
$_smarty_tpl->tpl_vars['r']->do_else = false;
?>
        <tr>
          <td align="center"> <?php echo $_smarty_tpl->tpl_vars['b']->value;?>
 </td>
          <td> <?php echo $_smarty_tpl->tpl_vars['r']->value['nombre'];?>
 </td>
          <td> <?php echo $_smarty_tpl->tpl_vars['r']->value['codigo'];?>
</td>
          <td> <?php echo $_smarty_tpl->tpl_vars['r']->value['nombree'];?>
 </td>
          <td> <?php echo $_smarty_tpl->tpl_vars['r']->value['ciudad'];?>
 </td>
          <?php $_smarty_tpl->_assignInScope('b', ((string)($_smarty_tpl->tpl_vars['b']->value+1)));?>
          <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        </tr>
      </table>
    </div>
  </center>
 </body>
</html><?php }
}
