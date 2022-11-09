<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="../../ajax.js"></script>
  <script type="text/javascript" src="../js/buscar_productos.js"></script>

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
          {foreach item=r from=$proveedores}
          <option value="{$r.nombre}">{$r.nombre}</option>
          {/foreach}
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
        {assign var="b" value="1"}
        {foreach item=r from=$productos}
        <tr>
          <td align="center"> {$b} </td>
          <td> {$r.nombre} </td>
          <td> {$r.producto}</td>
          <td> {$r.caracteristica} </td>
          <td> {$r.precio} </td>
          {assign var="b" value="`$b+1`"}
          {/foreach}
        </tr>
      </table>
  </center>
 </body>
</html>