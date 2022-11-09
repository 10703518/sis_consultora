"use strict"
function validar(){
	
	var gestion = document.Sistema.gestion.value;	

	
	if (gestion== "") {
		alert("El año de ingreso esta vacia");
		document.Sistema.inicio.focus();
		return;
	}


	document.Sistema.submit();
}