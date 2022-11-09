"use strict"
function validar(){
	var nombres = document.Sistema.nombres.value;
	var paterno = document.Sistema.paterno.value;
	var materno = document.Sistema.materno.value;
	var telefono = document.Sistema.telefono.value;
	var direccion = document.Sistema.direccion.value;
	var cedula = document.Sistema.cedula.value;
	var inicio = document.Sistema.inicio.value;
	var fin = document.Sistema.fin.value;

	/** validar como dato obligatorio y dato correcto**/
	if (!v1.test(nombres)) {
		alert("los nombres son incorrectos o estan vacios");
		document.Sistema.nombres.focus();
		return;
	}

	if (!v1.test(paterno)) {
		alert("El apellido paterno es incorrecto o esta vacio");
		document.Sistema.paterno.focus();
		return;
	}

	if (materno != "") {
		if (!v1.test(materno)) {
		alert("El apellido materno es incorrecto");
		document.Sistema.materno.focus();
		return;
		}
	}
	
	if (!v4.test(telefono)) {
		alert("El telefono es incorrecto o esta vacio");
		document.Sistema.telefono.focus();
		return;
	}

	if (direccion == "") {
		alert("la direccion esta vacia");
		document.Sistema.direccion.focus();
		return;
	}

	if (!v4.test(cedula)) {
		alert("La cedula es incorrecta o esta vacia");
		document.Sistema.cedula.focus();
		return;
	}

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
	document.Sistema.submit()
}