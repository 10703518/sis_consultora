<!DOCTYPE html> 
<html lang="esp"> 
	<head> 
	<link rel ="stylesheet" href ="../{$direc_css}" type = "text/css">
	<meta charset="utf-8"> 
	<script type = "text/javascript" src="../../ajax.js"></script>
	<script type="text/javascript">
		function buscar(){
			var d1,d2,d3,d4,d5, contenedor, ajax, url, param;
			contenedor = document.getElementById('clientes1');
			d1 = document.formu.nombres.value;
		    d2 = document.formu.apellidos.value;
			d3 = document.formu.ci.value;
			d4 = document.formu.razon_social.value;
			d5 = document.formu.nit.value;
			ajax = nuevoAjax();
			url = "ajax_buscar_cliente.php";
			param = "nombres="+d1+"&apellidos="+d2+"&ci="+d3+"&razon_social="+d4+"&nit="+d5 ;

			ajax.open("POST", url , true);
									


			ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
			//alert(param);
			ajax.onreadystatechange = function(){
				if (ajax.readyState == 4) {
					contenedor.innerHTML = ajax.responseText;
				}
			}
			ajax.send(param);
		}

		function mostrar(id_cliente){
			var d1, ventanaCalendario;
			d1 = id_cliente
			//alert(id_cliente);
			ventanaCalendario = window.open("ficha_tec_clientes1.php?id_cliente=" + d1, "calendario", "width=600,height=550,left=100,top=100,scrollbars=yes,menubars=no,statusbar=NO,statusNO,resizable=YES,location=NO")
		}
	</script>
</head>
<body>
	<!-----BUSCADOR----->
	<div class="titulo_listado">
		<h1>
			FICHA TECNICA CLIENTES
		</h1>
	</div>
	<center>

		<form action="#" method="post" name="formu">
			<table border="1" class="listado">
				<tr>
				
					<th>
						<b>Nombres</b><br />
						<input type="text" name="nombres" value="" size="10" onkeyup="buscar()">
					</th>
					<th>
						<b>Apellidos</b><br />
						<input type="text" name="apellidos" value="" size="10" onkeyup="buscar()">
					</th>
					<th>
						<b>C.I.</b><br />
						<input type="text" name="ci" value="" size="10" onkeyup="buscar()">
					</th>
					<th>
						<b>Razon social</b><br />
						<input type="text" name="razon_social" value="" size="10" onkeyup="buscar()">
					</th>
					<th>
						<b>NIT</b><br />
						<input type="text" name="nit" value="" size="10" onkeyup="buscar()">
					</th>
				</tr>
			</table>
		</form>
	</center>
	<!-----BUSCADOR----->
	<center>
		<div id="clientes1">
		</div>
	</center>
</body>
</html>
