"use strict"
function validar(){
	var nombre = document.Sistema.nombre.value;
	var telefono = document.Sistema.telefono.value;
	var email = document.Sistema.email.value;
	var direccion = document.Sistema.direccion.value;
	var urlEmpresa = document.Sistema.urlEmpresa.value;
	
    /** validar como dato obligatorio y dato correcto**/
	if (!v1.test(nombre)) {
		alert("los nombres son incorrectos o estan vacios");
		document.Sistema.nombre.focus();
		return; 
	}

	if (!v4.test(telefono)) {
		alert("El telefono es incorrecto o esta vacio");
		document.Sistema.telefono.focus();
		return;
	}
	
	/** validar como dato obligatorio y dato correcto**/
	if (!v3.test(email)) {
		alert("los email son incorrectos o estan vacios");
		document.Sistema.email.focus();
		return; 
	}

	/** validar como dato obligatorio y dato correcto**/
	
	//dato obligatorio
	if (direccion=="") {
		alert("direccion esta vacia")
		document.formu.direccion.focus();
		return;
	}

if (urlEmpresa== "") {
		alert("urlEmpresa esta vacia")
		document.formu.urlEmpresa.focus();
		return;
	}

	document.Sistema.submit();
}