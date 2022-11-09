<!DOCTYPE html>
<html lang="esp">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<script type="text/javascript">
		function validar(){
			funcion = document.formu.funcion.value;
			if (document.formu.funcion.value == "") {
				alert("Porfavor Seleccione ");
				document.formu.funcion.focus();
				return;
			}
			ventanaCalendario = window.open("rpt_funciones1.php?funcion=" + funcion , "calendario", "width=600, height=550, left=100, top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
		}
	</script>
</literal>
</head>
<body>
<div class="formu_ingreso_datos">
	<h2>RPT FUNCIONES</h2>
	<form method="post" name="formu">
		<p>
			<p>*Seleccione funcion</p>
			<select name="funcion">
				<option value="">--Seleccione--</option>
				<option value="T"> Todos </option>
				<option value="Impositiva"> IMPOSITIVA </option>
				<option value="Contabilidad"> CONTABILIDAD </option>
			</select>
		</p>
		<p>
			<input type="hidden" name="accion" value="">
			<input type="button" value="Aceptar" onclick="validar();" class="boton">
		</p>
	</form>
</div>
</body>
</html>