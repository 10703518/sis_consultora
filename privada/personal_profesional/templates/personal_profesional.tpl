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
          <h1>PERSONAL PROFESIONAL</h1>          
        </td>
        <td align="right" width="33%">
          <form name="formNuevo" method="post" action="personal_profesional_nuevo.php">
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
          <th>NRO</th><th>GESTION</th>
          <th>NOMBRES</th><th>APELLIDOS PATERNO</th><th>APELLIDOS MATERNO</th>
          <th><img src="../../imagenes/modificar.png" width="20%"></th><th><img src="../../imagenes/borrar.png" width="20%"></th>
        </tr>
        {assign var="b" value="1"}
        {foreach item=r from=$personal_profesional}
        <tr>
          <td align="center"> {$b} </td>
          <td> {$r.Gestion} </td>
                    <td> {$r.nombres} </td>
                    <td> {$r.ap} </td>
                     <td> {$r.am} </td>
          <td align="center">
            <form name="formModif {$r.id_personal_profesional}" method="post" action="personal_profesional_modificar.php">
              <input type="hidden" name="id_personal_profesional" value="{$r.id_personal_profesional}">
              <input type="hidden" name="id_personal" value="{$r.id_personal}">
              <a href="javascript:document.formModif {$r.id_personal_profesional}.submit(); " title="Modificar personal_profesional">
                Modificar>>
              </a>
            </form>
          </td>
         <td align="center">
            <form name="formModif {$r.id_personal_profesional}" method="post" action="personal_profesional_modificar.php">
              <input type="hidden" name="id_personal_profesional" value="{$r.id_personal_profesional}">
              <a href="javascript:document.formModif {$r.id_personal_profesional}.submit(); " title="Modificar personal_profesional"
         onclick='javascript: return(confirm("Desea realmente Eliminar al cliente ::: {$r.id_personal_profesional}?"));'>
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