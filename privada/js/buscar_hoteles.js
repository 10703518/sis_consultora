"use strict"
function buscar_hoteles() {
	var d1, d2,d3, d4,d5, ajax, url, param, contenedor;
	contenedor = document.getElementById('hoteles1');
	d1 = document.formu.nombre.value;
	d2 = document.formu.codigo.value;
	d3 = document.formu.nombree.value;
	d4 = document.formu.ciudad.value
    //d5 = document.formu.telefonos.value;
	ajax = nuevoAjax();
	url = "ajax_buscar_cadena_agencia.php"
	param = "nombre="+d1+"&codigo="+d2+"&nombree="+d3+"&ciudad="+d4;
	
	ajax.open("POST", url, true);
	ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	ajax.onreadystatechange = function() {
		if (ajax.readyState == 4) {
			contenedor.innerHTML = ajax.responseText;
		}
	}
	ajax.send(param);
}