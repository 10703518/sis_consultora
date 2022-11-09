<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="js/validar_consultora.js"></script>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
	<br>
	<center>
		<h1>CONSULTORA</h1>
		<form action="consultora1.php" method="post" name="formu" enctype="multipart/form-data">
			<table border="1">
				{foreach item=r from=$consultora}
				<tr>
					<th>Nombre(*) </th><th>:</th>
					<td><input type="text" name="nombre" onkeyup="this.value=this.value.toUpperCase()" value="{$r.nombre}"> </td>
				</tr>
				<tr>
					<th>Direccion(*) </th><th>:</th>
					<td><input type="text" name="direccion" onkeyup="this.value=this.value.toUpperCase()" value="{$r.direccion}"> </td>
				</tr>
				<tr>
					<th>Telefono(*) </th><th>:</th>
					<td><input type="text" name="telefono" onkeyup="this.value=this.value.toUpperCase()" value="{$r.telefono}"> </td>
				</tr>
				<tr>
					<th>Correo(*) </th><th>:</th>
					<td><input type="text" name="correo" onkeyup="this.value=this.value.toUpperCase()" value="{$r.correo}"> </td>
				</tr>
				<tr>
					<th align="right">Pagina Web</th><th>:</th>
					<td><input type="text" name="pagina_web" onkeyup="this.value=this.value.toUpperCase()" value="{$r.pagina_web}"></td>
				</tr>
				<tr>
					<th>Foto(*)</th><th>:</th>
				
				<td>
					
					<input type="hidden" name="MAX-FILE-SIZE" value="1000000">
					<input type="file" name="foto">
					<input type="hidden" name="foto1" value="{$r.foto}">
					<br><b>{$r.foto}</b>
				</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<input type="hidden" name="accion" value="">
						<input type="hidden" name="id_consultora" value="{$r.id_consultora}">
						<input type="button" value="Aceptar" onclick="validar();">
					</td>
				</tr>
				{/foreach}
			</table>
			<table>
				<tr>
					<td colspan="3" align="center"><b>(*)Campos Obligatorios</b></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
