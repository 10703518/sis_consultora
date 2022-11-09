<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="../js/validar_hoteles.js"></script>
	<script type="text/javascript" src="../../ajax.js"></script>
	<script type="text/javascript">
		function buscar(){
			
			var d1, contenedor, url;
			contenedor = document.getElementById('cadena_agencia_viajes');
			contenedor2= document.getElementById('cadena_agencia_viajes_seleccionado');
			contenedor3= document.getElementById('cadena_agencia_viajes_insertada');
					
			d1 = document.formu.nombre.value;
			d2 = document.formu.telefonos.value;
            d3 = document.formu.pag_web.value;
				
			ajax =nuevoAjax();
			url = "ajax_buscar_cadena_agencia_viajes.php"
			param = "nombre="+d1+"&telefonos="+d2+"&pag_web"+d3;
			ajax.open("POST", url, true);
			ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
			ajax.onreadystatechange = function(){
				if (ajax.readyState == 4){
					contenedor.innerHTML = ajax.responseText;
					contenedor2.innerHTML = "";
					contenedor3.innerHTML = "";
				}
			}
			ajax.send(param);
		}
		function buscar_cadena_agencia_viajes1(id_cadena_agencia_viaje){
			var d1, contenedor, url;
			contenedor = document.getElementById('cadena_agencia_viajes_seleccionado');
			contenedor2 = document.getElementById('cadena_agencia_viajes');
			document.formu. id_cadena_agencia_viaje.value =  id_cadena_agencia_viaje;

			d1 =  id_cadena_agencia_viaje;

			ajax = nuevoAjax();
			url = "ajax_buscar_cadena_agencia_viajes1.php";
			param = "id_cadena_agencia_viaje="+d1;
			ajax.open("POST", url, true);
			ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
			ajax.onreadystatechange = function(){
				if (ajax.readyState == 4){
					contenedor.innerHTML = ajax.responseText;
					contenedor2.innerHTML = "";
				}
			}
			ajax.send(param);
		}

		function insertar_cadena_agencia_viajes(){
			var d1, contenedor, url;
			contenedor = document.getElementById('cadena_agencia_viajes_seleccionado');
			contenedor2 = document.getElementById('cadena_agencia_viajes');
			contenedor3 = document.getElementById('cadena_agencia_viajes_insertada');
			d1 = document.formu.nombre1.value;
			d2 = document.formu.telefonos1.value;
			d3 = document.formu.pag_web1.value;
			
			if(d1 == ""){
				alert("El nombre es incorrecta o el campo esta vacio");
				document.formu.nombre1.focus();
				return;
			}

			if(d2 == ""){
				alert("El telefono es incorrecta o el campo esta vacio");
				document.formu.telefonos1.focus();
				return;
			}

			if(d3==""){
				alert("la pagina web es incorrecto o el campo esta vacio");
				document.formu.pag_web1.focus();
				return;
			}

			ajax= nuevoAjax();
			url = "ajax_inserta_cadena_agencia_viajes.php";
			param = "nombre1="+d1+"&telefonos1="+d2+"&pag_web1="+d3;
			ajax.open("POST", url, true);
			ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');

			ajax.onreadystatechange = function(){
				if(ajax.readyState == 4){
					contenedor.innerHTML = "";
					contenedor2.innerHTML = "";
					contenedor3.innerHTML = ajax.responseText;
				}
			}

			ajax.send(param);
		}
	</script>
</head>
<body>
		<h1>REGISTRAR </h1>
		<center>
		<form action="hoteles_nuevo1.php" method="post" name="formu">
			<table border="1">
				<tr>
					<th align="right">Seleccione (*)</th>
					<th>:</th>
					<td>
						<table>
							<tr>
								<td>
									<b>Nombre</b><br />
									<input type="text" name="nombre" value="" size="10" onkeyup="buscar()">
								</td>
								<td>
									<b>Telefono</b><br />
									<input type="text" name="telefonos" value="" size="10" onkeyup="buscar()">
								</td>
								<td>
									<b>Pagina_Web</b><br />
									<input type="text" name="pag_web" value="" size="10" onkeyup="buscar()">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<table width="100%">
							<tr>
								<td colspan="3">
									<div id="cadena_agencia_viajes"> </div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<table width="100%">
							<tr>
								<td colspan="3">
									<div id="cadena_agencia_viajes_seleccionado"> </div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<table width="100%">
							<tr>
								<td colspan="3">
									<input type="hidden" name="id_cadena_agencia_viaje">
									<div id="cadena_agencia_viajes_insertada"> </div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<th align="right">Codigo (*)</th>
					<th>:</th>
					<td><input type="text" name="codigo" size="15" placeholder="codigo"> </td>
				</tr>
				<tr>
					<th align="right">Nombre (*)</th>
					<th>:</th>
					<td><input type="text" name="nombree" size="15" placeholder="nombree"> </td>
				</tr>
				<tr>
					<th align="right">Ciudad (*)</th>
					<th>:</th>
					<td><input type="text" name="ciudad" size="15" placeholder="ciudad"> </td>
				</tr>
				<tr>
				<td align="center" colspan="3">			
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();">
				<input type="button" value="Cancelar" onclick="javascript:location.href='hoteles.php';">
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td colspan="3" align="center"><b>(*) Campos Obligatorios</b></td>
		</tr>
	</table>
</form>
</center>
</body>
</html>