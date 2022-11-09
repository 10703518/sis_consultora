"use strict"
function validar(){
	var nombres = document.formu.nombres.value;
	var apellido = document.formu.apellido.value;
	var fecha = document.formu.fecha.value;
	

	/** validar como dato obligatorio y dato correcto**/
	if (!v1.test(nombres)) {
		alert("los nombres son incorrectos o estan vacios");
		document.formu.nombres.focus();
		return;
	}

	/** validar como dato correcto (LETRAS Y ESPACIOS)**/
	if (apellido != "") {
		if (!v1.test(apellido)){
			alert("El apellido es incorrecto");
			document.formu.apellido.focus();
			return;
		}
	}

	if (fecha == "") {
		alert("la fecha esta vacia");
		document.formu.fecha.focus();
		return;
	}
	
	alert("DATOS CORRECTOS");
}