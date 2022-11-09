<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../{$direc_css}">
	<script type="text/javascript" src="../js/expresiones_regulares.js"></script>
	<script type="text/javascript" src="../js/validar_productos.js"></script>
	<script type="text/javascript" src="../../ajax.js"></script>
	<script type="text/javascript">
		function buscar(){
			
			var d1, contenedor, url;
			contenedor = document.getElementById('proveedores');
			contenedor2= document.getElementById('proveedores_seleccionado');
			contenedor3= document.getElementById('proveedores_insertada');
					
			d1 = document.formu.nombre.value;
			d2 = document.formu.telefono.value;

				
			ajax =nuevoAjax();
			url = "ajax_buscar_proveedor.php"
			param = "nombre="+d1+"&telefono="+d2;
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
		function buscar_proveedor(id_proveedor){
			var d1, contenedor, url;
			contenedor = document.getElementById('proveedores_seleccionado');
			contenedor2 = document.getElementById('proveedores');
			document.formu.id_proveedor.value = id_proveedor;

			d1 = id_proveedor;

			ajax = nuevoAjax();
			url = "ajax_buscar_proveedor1.php";
			param = "id_proveedor="+d1;
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

		function insertar_proveedor(){
			var d1, contenedor, url;
			contenedor = document.getElementById('proveedores_seleccionado');
			contenedor2 = document.getElementById('proveedores');
			contenedor3 = document.getElementById('proveedores_insertada');
			d1 = document.formu.nombre1.value;
			d2 = document.formu.direccion1.value;
			d3 = document.formu.telefono1.value;
			
			if(d1 == ""){
				alert("El nombre es incorrecta o el campo esta vacio");
				document.formu.nombre1.focus();
				return;
			}

			if(d2 == ""){
				alert("La direccion es incorrecta o el campo esta vacio");
				document.formu.direccion1.focus();
				return;
			}

			if(d3==""){
				alert("El telefono es incorrecto o el campo esta vacio");
				document.formu.telefono1.focus();
				return;
			}

			ajax= nuevoAjax();
			url = "ajax_inserta_proveedor.php";
			param = "nombre1="+d1+"&direccion1="+d2+"&telefono1="+d3;
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
		<h1>REGISTRAR PRODUCTOS</h1>
		<center>
		<form action="productos_nuevo1.php" method="post" name="formu">
			<table border="1">
				<tr>
					<th align="right">Seleccione el Proveedor (*)</th>
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
									<input type="text" name="telefono" value="" size="10" onkeyup="buscar()">
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
									<div id="proveedores"> </div>
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
									<div id="proveedores_seleccionado"> </div>
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
									<input type="hidden" name="id_proveedor">
									<div id="proveedores_insertada"> </div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<th align="right">Producto (*)</th>
					<th>:</th>
					<td><input type="text" name="producto" size="15" placeholder="producto"> </td>
				</tr>
				<tr>
					<th align="right">Caracteristica (*)</th>
					<th>:</th>
					<td><input type="text" name="caracteristica" size="15" placeholder="caracteristica"> </td>
				</tr>
				<tr>
					<th align="right">Precio (*)</th>
					<th>:</th>
					<td><input type="text" name="precio" size="15" placeholder="precio"> </td>
				</tr>
				<tr>
				<td align="center" colspan="3">			
				<input type="hidden" name="accion" value="">
				<input type="button" value="Aceptar" onclick="validar();">
				<input type="button" value="Cancelar" onclick="javascript:location.href='productos.php';">
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