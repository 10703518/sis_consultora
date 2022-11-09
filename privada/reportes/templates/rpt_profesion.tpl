<!DOCTYPE html>
<html lang="esp">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<script type="text/javascript">
		function validar(){
			profesion = document.formu.profesion.value;
			if (document.formu.profesion.value == "") {
				alert("Porfavor Seleccione la Profesion");
				document.formu.profesion.focus();
				return;
			}
			ventanaCalendario = window.open("rpt_profesion.php?profesion=" + profesion, "calendario", "width=600, height=550, left=100, top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
		}
	</script>
</literal>
</head>
<body>
<div class="formu_ingreso_datos">
	<h2>RPT PRPFESION</h2>
	<form method="post" name="formu">
		<p>
			<p>*Seleccione la Profesion</p>
			<select name=PROFESION>
				<option value="">--Seleccione--</option>
				<option value="T"> Todos </option>
				<option value="A"> Auditor </option>
				<option value="C"> Contador </option>
				<option value="D"> Administrador de Empresas </option>
				<option value="E"> Economista </option>
				<option value="B"> Abogado</option>
				<option value="Ing"> Ingeniero en Sistema </option>
				<option value="Sec">Secretario </option>
			<tr>
				{foreach item=r from=$profesion}
				<option value="{$r.id_profesion}">{$r.profesion}</option>
               {/foreach}
			</tr>
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