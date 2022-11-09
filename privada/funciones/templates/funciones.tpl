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
          <h1>FUNCIONES</h1>          
        </td>
        <td align="right" width="33%">
          <form name="formNuevo" method="post" action="funciones_nuevo.php">
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
          <th>NRO</th><th>FUNCION</th><th>DESCRIPCION</th><th>PERSONA</th>
          <th><img src="../../imagenes/modificar.png" width="20%"></th><th><img src="../../imagenes/borrar.png" width="20%"></th>
        </tr>
        {assign var="b" value="1"}
        {foreach item=r from=$funciones}
        <tr>
          <td align="center"> {$b} </td>
          <td> {$r.funcion} </td>
          <td> {$r.descripcion} </td>
          <td> {$r.ap} {$r.am} {$r.nombres} </td>
          <td align="center">
            <form name="formModif{$r.id_funcion}" method="post" action="funciones_modificar.php">
              <input type="hidden" name="id_funcion" value="{$r.id_funcion}">
              <input type="hidden" name="id_personal" value="{$r.id_personal}">
              <a href="javascript:document.formModif{$r.id_funcion}.submit(); " title="Modificar Funcion">
                Modificar>>
              </a>
            </form>
          </td>
          <td align="center">
            <form name="formElimi{$r.id_funcion}" method="post" action="funciones_eliminar.php">
              <input type="hidden" name="id_funcion" value="{$r.id_funcion}">
              <a href="javascript:document.formElimi{$r.id_funcion}.submit(); " title="Eliminar funcion"
               onclick='javascript:return(confirm("Desea realmente Eliminar a la funcion :::{$r.id_funcion}?"));'>
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