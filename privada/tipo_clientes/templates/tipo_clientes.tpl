<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">

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
          <h1>TIPOS CLIENTES</h1>          
        </td>
        <td align="right" width="33%">
          <form name="formNuevo" method="post" action="tipo_clientes_nuevo.php">
            <a href="javascript:document.formNuevo.submit();">
              Nuevo>>>
            </a>            
          </form>          
        </td>
      </tr>      
    </table>

    <center>
      <table class="listado">
        <tr>
          <th>NRO</th><th>TIPO CLIENTE</th><th>PERSONA</th>
          <th><img src="../../imagenes/modificar.png" width="20%"></th><th><img src="../../imagenes/borrar.png" width="20%"></th>
        </tr>
        {assign var="b" value="1"}
        {foreach item=r from=$tipo_clientes}
        <tr>
          <td align="center"> {$b} </td>
          <td> {$r.tipo_cliente} </td>
          <td> {$r.nombres} {$r.apellidos}</td>
          <td align="center">
            <form name="formModif {$r.id_tipo_cliente}" method="post" action="tipo_clientes_modificar.php">
              <input type="hidden" name="id_tipo_cliente" value="{$r.id_tipo_cliente}">
              <input type="hidden" name="id_cliente" value="{$r.id_cliente}">
              <a href="javascript:document.formModif {$r.id_tipo_cliente}.submit(); " title="Modificar clientes">
                Modificar>>
              </a>
            </form>
          </td>
          <td align="center">
            <form name="formElimi {$r.id_tipo_cliente}" method="post" action="tipo_clientes_eliminar.php">
              <input type="hidden" name="id_tipo_cliente" value="{$r.id_tipo_cliente}">
              <a href="javascript:document.formElimi {$r.id_tipo_cliente}.submit(); " title="Eliminar cliente" onclick='javascript: return(confirm("Desea realmente Eliminar al cliente ::: {$r.id_tipo_cliente}?"));'>
                Eliminar>>
              </a>
            </form>
          </td>
          {assign var="b" value="`$b+1`"}
          {/foreach}
        </tr>
      </table>
    </center>

  </body>
</html>