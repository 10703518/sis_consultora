<!DOCTYPE html>
<html lang="esp">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	{literal}
	<script type="text/javascript">
		function validar(){
			id_empresa = document.formu.id_empresa.value;
			if (document.formu.id_empresa.value == "") {
				alert("Porfavor Seleccione la e´mpresa");
				document.formu.id_empresa.focus();
				return;
			}
			ventanaCalendario = window.open("rpt_tarif_rural1.php?id_empresa=" + id_empresa , "calendario", "width=600, height=550, left=100, top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
		}
	</script>
{/literal}
</head>
<body>
<div class="formu_ingreso_datos">
	<h2>RPT TARIFA RURAL</h2>
	<form method="post" name="formu">
		<p>
			<p>*Seleccione Empresa</p>
			<select name="id_empresa">
				<option value="">--Seleccione--</option>
				<option value="T"> Todos </option>
				{foreach item=r from=$empresa}
					<option value="{$r.id_empresa}">{$r.nombre}</option>
					{/foreach}
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