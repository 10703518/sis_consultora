  <!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../{$direc_css}" type="text/css" >
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="../js/validar_personal.js"></script>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
</head>
<body>
	<div class="formu_ingreso_datos">
		<form action="personal_modificar1.php" method="post" name="formu">
			<h2>MODIFICAR PERSONAL</h2>
			{foreach item=r from=$personal}
			<p>
				<input type="text" name="nombres" size="15" placeholder="  Nombres  " onkeyup="this.value=this.value.toUpperCase()" value="{$r.nombres}">(*)
			</p>
			<p>
				<input type="text" name="ap" size="15" placeholder="Apellido Paterno" onkeyup="this.value=this.value.toUpperCase()" value="{$r.ap}">(*)
			</p>
			<p>
				<input type="text" name="am" size="15" placeholder="Apellido Materno" onkeyup="this.value=this.value.toUpperCase()" value="{$r.am}">
			</p>

            <p>
			<input type="text" name="ci" size="15" placeholder="Carnet de Identidad" value="{$r.ci}">(*)
		    </p>

			<p>
				<input type="text" name="direccion" size="15" placeholder="Direccion" onkeyup="this.value=this.value.toUpperCase()" value="{$r.direccion}">(*)
			</p>

            <p>
			<input type="text" name="telefono" size="15" placeholder="telefono" value="{$r.telefono}">(*)
		    </p>
			<p>
				<input type="date" name="fecha_inicio" size="15" placeholder="fecha_inicio" value="{$r.fecha_inicio}">(*)
			</p>
			<p>
				<input type="date" name="fecha_fin" size="15" placeholder="fecha_fin" value="{$r.fecha_fin}">(*)
			</p>
			<p>
			<input type="hidden" name="accion" value="">
			<input type="hidden" name="id_personal" value="{$r.id_personal}">
			<input type="button" value="Aceptar" onclick="validar();" class="boton2">
			<input type="button" value="Cancelar" onclick="javascript:location.href='personal.php';" class="boton2">
			</p>
			{/foreach}
			<p><b>(*)Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>
