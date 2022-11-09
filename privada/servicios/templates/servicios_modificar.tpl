<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="../js/validar_servicio.js"></script>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="servicios_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR SERVICIOS</h2>
			{foreach item=r from=$servicio}
	
				<input type="text" name="descripcion" size="15" placeholder="Descripcion" onkeyup="this.value=this.value.toUpperCase()" value="{$r.descripcion}">(*)
			<p>
				<input type="text" name="servicio" size="15" placeholder="Servicio" onkeyup="this.value=this.value.toUpperCase()" value="{$r.servicio}">(*)
			</p>
	
			<p>
			<input type="hidden" name="accion" value="">
			<input type="hidden" name="id_servicio" value="{$r.id_servicio}">
			<input type="button" value="Aceptar" onclick="validar();" class="boton2">
			<input type="button" value="Cancelar" onclick="javascript:location.href='servicios.php';" class="boton2">
			</p>
			{/foreach}
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>
