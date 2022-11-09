"use strict"
function validar(){
	var profesion = document.Sistema.profesion.selectedIndex;
	
	if (profesion== "") {
		alert("La profesion esta vacia");
		document.Sistema.profesion.focus();
		return;
	}
document.Sistema.submit();
}