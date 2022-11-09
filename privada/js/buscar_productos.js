"use strict"
function buscar_productos() {
	var d1, d2,d3, d4, ajax, url, param, contenedor;
	contenedor = document.getElementById('productos1');
	d1 = document.formu.nombre.value;
	d2 = document.formu.producto.value;
	d3 = document.formu.caracteristica.value;
	d4 = document.formu.precio.value;
	ajax = nuevoAjax();
	url = "ajax_buscar_productos.php"
	param = "nombre="+d1+"&producto="+d2+"&caracteristica="+d3+"&precio="+d4;
	
	ajax.open("POST", url, true);
	ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	ajax.onreadystatechange = function() {
		if (ajax.readyState == 4) {
			contenedor.innerHTML = ajax.responseText;
		}
	}
	ajax.send(param);
}