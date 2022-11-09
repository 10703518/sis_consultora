<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
  </head>
  <body>
    <div class="titulo_listado">
      <h1>
        SERVICIOS
      </h1>
    </div>
    <div class="titulo_nuevo">
      <form name="formNuevo" method="post" action="servicios_nuevo.php">
        <a href="javascript:document.formNuevo.submit();">
          Nuevo>>>
        </a>    
      </form>
    </div>
  <center>
    <table class="listado">
      <tr>
        <th>NRO</th><th>DESCRIPCION</th><th>SERVICIO</th>
        <th><img src="../../imagenes/modificar.png" width="20%"></th><th><img src="../../imagenes/borrar.png" width="5%"></th>
      </tr>
        {assign var="b" value="0"}
        {assign var="total" value="`$pagina-1`"} 
        {assign var="a" value="`$numreg*$total`"}
        {assign var="b" value="`$b+1+$a`"}
        {foreach item=r from=$servicios}
      <tr>
        <td align="center">{$b}</td>
        <td>{$r.descripcion}</td>
        <td>{$r.servicio}</td>
        <td align="center">
          <form name="formModif{$r.id_servicio}" method="post" action="servicios_modificar.php">
            <input type="hidden" name="id_servicio" value="{$r.id_servicio}">
            <a href="javascript:document.formModif{$r.id_servicio}.submit();" title="Modificar Servicios Sistema">
              Modificar>>>              
            </a>            
          </form>
        </td>
        <td align="center">
          <form name="formElimi{$r.id_servicio} " method="post" action="servicios_eliminar.php">
            <input type="hidden" name="id_servicios" value="{$r.id_servicio}">
            <a href="javascript:document.formElimi{$r.id_servicio}.submit();" title="Eliminar Servicio Sistema" onclick="javascript:return(confirm ('Desea realmente eliminar al servicios..?')); location.href='servicios_eliminar.php'">
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