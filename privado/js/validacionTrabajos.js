"use strict"
function validar(){
	var inicio = document.Sistema.inicio.value;
	var fin = document.Sistema.fin.value;
	
	if (inicio == "") {
		alert("la fecha de ingreso esta vacia");
		document.Sistema.inicio.focus();
		return;
	}

	if (fin == "") {
		alert("Fecha de fin esta vacia");
		document.Sistema.fin.focus();
		return;
	}
	
	document.Sistema.submit();
}