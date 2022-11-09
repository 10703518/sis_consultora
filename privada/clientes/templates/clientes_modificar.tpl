<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="../js/validar_cliente.js"></script>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="clientes_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR CLIENTE</h2>
			{foreach item=r from=$cliente}

				<input type="text" name="nombre" size="15" placeholder="Nombres" onkeyup="this.value=this.value.toUpperCase()" value="{$r.nombres}">(*)
			</p>
			<p>
				<input type="text" name="apellidos" size="15" placeholder="Apellidos" onkeyup="this.value=this.value.toUpperCase()" value="{$r.apellidos}">(*)
			</p>
			<p>
			<input type="text" name="ci" size="15" placeholder="Carnet de Identidad" value="{$r.ci}">(*)
			</p>
			<p>
				<input type="text" name="razon_social" size="15" placeholder="Razon Social" onkeyup="this.value=this.value.toUpperCase()" value="{$r.razon_social}">(*)
			</p>
			<p>
				<input type="text" name="nit" size="15" placeholder="Nit" value="{$r.nit}">(*)
			</p>
			<p>
			<input type="hidden" name="accion" value="">
			<input type="hidden" name="id_cliente" value="{$r.id_cliente}">
			<input type="button" value="Aceptar" onclick="validar();" class="boton2">
			<input type="button" value="Cancelar" onclick="javascript:location.href='clientes.php';" class="boton2">
			</p>
			{/foreach}
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>
