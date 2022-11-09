<!DOCTYPE html> 
<html> 
<head> 
	<script type="text/javascript">
		var ventanaCalendario = false
		function imprimir(){
			if (confirm('Desea imprimir?')) {
				window.print();
			}
		}
	</script>
</head>
<body style='cursor:pointer;cursor:hand' onClick='imprimir();'>
	<table>
		<tr>
			<td>
				<img src="../consultora/logos/{$foto}" width="70%">
			</td>
			<td align="center" width="80%">
				<h1>FICHA TECNOCA DE CLIENTE</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<td>
					<table border="0">
						{foreach item=r from=$cliente}
						<tr>
							<th align="right">NOMBRES</th><th>:</th>
							<td><input type="text" name="nombres" value="{$r.nombres}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">Apellidos</th><th>:</th>
							<td><input type="text" name="apellidos" value="{$r.apellidos}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">CI</th><th>:</th>
							<td><input type="text" name="ci" value="{$r.ci}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">Razon Social</th><th>:</th>
							<td><input type="text" name="razon_social" value="{$r.razon_social}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">NIT</th><th>:</th>
							<td><input type="text" name="nit" value="{$r.nit}" disabled=""> </td>
						</tr>
						{/foreach}						
					</table>
						
				</td>
			</tr>
		</table>
	</center>
	
</body>

