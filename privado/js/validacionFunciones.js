"use strict"
function validar(){
	var funcion = document.Sistema.funcion.value;

	if (funcion== "") {
		alert("funcion esta vacia")
		document.Sistema.funcion.focus();
		return;
	}
	document.Sistema.submit();
}