<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="../js/validar_funciones.js"></script>
</head>
<body>

	<div class="formu_ingreso_datos">
		<form action="funciones_nuevo1.php" method="post" name="formu">
			<h2>REGISTRAR FUNCIONES</h2>
			<b>Personal (*)</b>
			<select name="id_personal">
				<option value="">selecione</option>
				{foreach item=r from=$personal}
				<option value="{$r.id_personal}">{$r.ap}--{$r.am}--{$r.nombres}</option>
				{/foreach}
			</select>
			<p>
				<input type="text" name="descripcion" size="15" placeholder="Descripcion"> (*)
			</p>
			<p>
				<input type="text" name="funcion" size="15" placeholder="Funciones"> (*)
			</p>
			<p>
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				<input type="button" value="Cancelar" onclick="javascript:location.href='funciones.php';" class="boton2">
			</p>
			<p><b>(*) Campos Obligatorios</b></p>
		</form>
	</div>
</body>
</html>