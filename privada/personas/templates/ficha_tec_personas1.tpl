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
				<h1>FICHA TECNOCA DE PERSONA</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellspacing="0">
			<tr>
				<td>
					<table border="0">
						{foreach item=r from=$persona}
						<tr>
							<th align="right">CI</th><th>:</th>
							<td><input type="text" name="ci" value="{$r.ci}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">NOMBRES</th><th>:</th>
							<td><input type="text" name="nombres" value="{$r.nombres}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">Apellido Paterno</th><th>:</th>
							<td><input type="text" name="ap" value="{$r.ap}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">Apellido Materno</th><th>:</th>
							<td><input type="text" name="am" value="{$r.am}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">Direccion</th><th>:</th>
							<td><input type="text" name="direccion" value="{$r.direccion}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">Telefono</th><th>:</th>
							<td><input type="text" name="telefono" value="{$r.telef}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">Genero</th><th>:</th>
							<td>
								{if $r.genero =='M'}<input type="text" name="genero" value="Masculino" disabled="">{/if}
								{if $r.genero =='F'}<input type="text" name="genero" value="Femenino" disabled="">{/if}
							</td>
						</tr>
						{/foreach}						
					</table>
						
				</td>
			</tr>
		</table>
	</center>
	
</body>

