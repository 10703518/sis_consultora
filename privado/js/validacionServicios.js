"use strict"
function validar(){
	var servicio = document.Sistema.servicio.value;
	var otros = document.Sistema.otros.value;

	

	/** validar como dato obligatorio y dato correcto**/
	if (!v1.test(servicio)) {
		alert("El servicio esta vacio");
		document.Sistema.servicio.focus();
		return;
	}

	document.Sistema.submit();
}