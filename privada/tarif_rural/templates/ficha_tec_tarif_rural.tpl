<!DOCTYPE html>
</html>
<html lang = "esp">
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<meta charset="utf-8">
		<script type="text/javascript" src="../../ajax.js"></script>
		<script type="text/javascript">
			function buscar() {
			var d1, d2, d3, contenedor, ajax, url, param;
				contenedor = document.getElementById('tarif_rural1');
				d1 = document.formu.nombre.value;
				d2 = document.formu.lugar.value;
				d3 = document.formu.tarifa_carrera.value;
				ajax = nuevoAjax();
				url = "ajax_tarifa_rural.php"
				param = "nombre="+d1+"&lugar="+d2+"&tarifa_carrera="+d3;
				//alert(param);
				ajax.open("POST", url, true);
				ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
				ajax.onreadystatechange = function() {
					if (ajax.readyState == 4) {
						contenedor.innerHTML = ajax.responseText;
					}
				}
				ajax.send(param);
			}

			function mostrar(id_tar_rur) {
			var d1, ventanaCalendario;
			d1 = id_tar_rur;
			//alert(id_tarea);
			ventanaCalendario = window.open("ficha_tec_tarif_rural1.php?id_tar_rur=" + d1 , "calendario", "width=600, height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,status=NO,resizable=YES,location=NO")
			}
		</script>
	</head>
	<body>
		<!---------BUSCAODR----------->
		<h1>
				FICHA TECNICA DE TARIFAS
			</h1>
		<center>
		<form action="#" method="post" name="formu">
			<table border="1" class="listado">
				<tr>
					<th>
            <b>EMPRESA</b><br />
          <select name="nombre" onchange="buscar()">
          <option value="">--Seleccione--</option>
          {foreach item=r from=$empresa}
          <option value="{$r.nombre}">{$r.nombre}</option>
          {/foreach}
        </select>
          </th>
					<th>
						<b>LUGAR</b><br />
						<input type="text" name="lugar" value="" size="10" onkeyup="buscar()">
					</th>
					<th>
						<b>TARIFA DE LA CARRETERA</b><br />
						<input type="text" name="tarifa_carrera" value="" size="10" onkeyup="buscar()">
					</th>
				</tr>
			</table>
		</form>
	</center>
		<!-----------BUSCADOR------------->
		<center>
			<div id="tarif_rural1">
			</div>
		</center>
	</body>
</html>
