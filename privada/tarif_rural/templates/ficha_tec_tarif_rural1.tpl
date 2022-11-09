<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		var ventanaCalendario=false
		function imprimir(){
			if(confirm(' Desea imprimir ?')){
				window.print();
			}
		}
	</script>
</head>
<body style='cursor:pointer;cursor: hand' onclick="imprimir();">
	<table width="100%" border="0">
		<tr>
			<td>
				<img src="../consultora/logos/{$foto}" width="70%">
			</td>
			<td align="center" width="80%">
				<h1> FICHA TECNICA EMPRESA</h1>
			</td>
		</tr>
	</table>
	<br>
	<center>
		<table border="1" cellpadding="0">
			<tr>
				<td>
					<table border="0">
						{foreach item=r from=$tarif_rural}
						<tr>
							<th align="right">NOMBRE</th><th>:</th>
							<td><input type="text" name="nombre" value="{$r.nombre}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">LUGAR</th><th>:</th>
							<td><input type="text" name="lugar" value="{$r.lugar}" disabled=""> </td>
						</tr>
						<tr>
							<th align="right">TARIFA</th><th>:</th>
							<td><input type="text" name="tarifa_carrera" value="{$r.tarifa_carrera}" disabled=""> </td>
						</tr>
						{/foreach}
					</table>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>
