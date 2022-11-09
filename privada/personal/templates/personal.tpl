<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="../../ajax.js"></script>
  <script type="text/javascript" src="js/buscar_personal.js"></script>
  </head>
  <body>
    <div class="titulo_listado">
      <h1>
        PERSONAL
      </h1>
    </div>
    <div class="titulo_nuevo">
      <form name="formNuevo" method="post" action="personal_nuevo.php">
        <a href="javascript:document.formNuevo.submit();">
          Nuevo>>>
        </a>    
      </form>
    </div>
   <center>
      <form action="#" method="post" name="formu">
        <table border="1" class="listado">
          <tr>
              <b>C. I.</b>
              <input type="text" name="ci" value="" size="10" onkeyup="buscar_personal()">
            </th>
            <th>
              <b>FECHA_INICIO</b>
              <input type="date" name="fecha_inicio" value="" size="10" onkeyup="buscar_personal()">
            </th>
            <th>
              <b>FECHA_FIN</b>
              <input type="date" name="fecha_fin" value="" size="10" onkeyup="buscar_personal()">
            </th>
        </table>
      </form>
     </center>
     <br><br>
  <center>
    <div id="personal1">
    <table class="listado">
      <tr>
        <th>NRO</th><th>NOMBRES</th><th>APELLIDO PARTERNO</th><th>APELLIDO MATERNO</th><th>CI</th><th>FECHA_INICIO</th><th>FECHA_FIN</th>
        <th><img src="../../imagenes/modificar.png" width="20%"></th><th><img src="../../imagenes/borrar.png" width="5%"></th>
      </tr>
        {assign var="b" value="0"}
        {assign var="total" value="`$pagina-1`"} 
        {assign var="a" value="`$numreg*$total`"}
        {assign var="b" value="`$b+1+$a`"}
        {foreach item=r from=$personal}
      <tr>
        <td align="center">{$b}</td>
        <td>{$r.nombres}</td>
        <td>{$r.ap}</td>
        <td align="center">{$r.am}</td>
        <td align="center">{$r.ci}</td>
        <td align="center">{$r.fecha_inicio}</td>
        <td align="center">{$r.fecha_fin}</td>
        <td align="center">
          
          <form name="formModif{$r.id_personal}" method="post" action="personal_modificar.php">
            <input type="hidden" name="id_personal" value="{$r.id_personal}">
            <a href="javascript:document.formModif{$r.id_personal}.submit();" title="Modificar Personal Sistema">
              Modificar>>>              
            </a>            
          </form>
        </td>
        <td align="center">
          <form name="formElimi{$r.id_personal}"method="post"action="personal_eliminar.php">
            <input type="hidden" name="id_personal" value="{$r.id_personal}">
            <a href="javascript:document.formElimi{$r.id_personal}.submit();" title="Eliminar Personal Sistema" onclick="javascript:return(confirm ('Desea realmente eliminar al personal..?')); location.href='personal_eliminar.php'">
              Eliminar>>              
            </a>            
         </form>          
        </td>
        {assign var="b" value="`$b+1`"}
          {/foreach}
      </tr>
    </table>

    <!--paginacion ------------>
    <table>
      <tr align="center" >
        <td>
        {if !empty($urlback)}
        <a onclick="location.href='{$urlback}'" style="font-family: Verdana; font-size: 9px;cursor: pointer";>&laquo;Anterior</a>
        {/if}
        {if !empty($paginas)}
          {foreach from=$paginas item=pag}
            {if $pag.npag == $pagina}
              {if $pagina neq '1'}|{/if} <b style="color:#FB992F;font-size:12px;"> {$pag.npag}</b>
            {else}
            | <a onclick="location.href='{$pag.pagV}'" style="cursor:pointer;">{$pag.npag}</a>
            {/if}
            {/foreach}
            {/if}
            {if $numpaginas gt $numbotones and !empty($urlnext) and $pagina lt $numpaginas}
            | <a onclick="location.href='{$urlnext}'"style="font-family:Verdana;font-size:9px;cursor:pointer"> Siguiente&raquo;</a>
            {/if}
          </td>
        </tr>
      </table>
    </center>
  </body>
</html>