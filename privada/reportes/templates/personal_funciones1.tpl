<!DOCTYPE html> 
<html> 
	<head> 
	<script type="text/javascript">
		var ventanaCalendario=false
			function imprimir(){
				if (confirm('Desea Imprimir ?')){
					window.print();
				}
			}
	</script> 
	</head> 
	<body style='cursor:pointer;cursor:hand' onclick="imprimir();">
	 <table width="100%" border="0"> 
	 	<tr> 
	 		<td> <img src="../../imagenes/{$foto}" width="70%"></td>
	 		<td align = "center" width="80%"> <h1>PERSONAL_FUNCIONES</h1> </td> 
	 	</tr > 
	 	</table> 
	 	<br> 
	 	<center> 
	 		<table border="1" cellspacing="0"> 
	 		<tr>
	 		 <th>NRO</th> <th>PERSONAL</th><th>FUNCIONES</th>
	 		</tr> 
	 		 {assign var="b" value="1"}
	 		 {foreach item=r from=$personal_funciones}
	 		 <tr> 
	 		 	<td align = "center ">{$b}</td>
	 		 	<td>{$r.nombres} {$r.ap} {$r.am} </td> 
	 		 	<td> {$r.descripcion} {$r.funcion}</td> 
	 		 	{assign var="b" value="`$b+1`"} 
				{/foreach} 
				</tr>
		</table > 
	<br><br> 
	<b>Fecha:</b>{$fecha}
		</center> 
	</body> 
</html>