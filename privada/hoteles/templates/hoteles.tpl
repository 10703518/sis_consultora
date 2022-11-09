<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="../../ajax.js"></script>
  <script type="text/javascript" src="../js/buscar_hoteles.js"></script>

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
          {foreach item=r from=$cadena_agencia_viajes}
          <option value="{$r.nombre}">{$r.nombre}</option>
          {/foreach}
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
        {assign var="b" value="1"}
        {foreach item=r from=$hoteles}
        <tr>
          <td align="center"> {$b} </td>
          <td> {$r.nombre} </td>
          <td> {$r.codigo}</td>
          <td> {$r.nombree} </td>
          <td> {$r.ciudad} </td>
          {assign var="b" value="`$b+1`"}
          {/foreach}
        </tr>
      </table>
    </div>
  </center>
 </body>
</html>