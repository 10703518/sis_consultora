"use strict"
function validar (){
	var nombres = document.formu.nombres.value;
	var apellidos = document.formu.apellidos.value;
	var ci = document.formu.ci.value;
	var razon_social = document.formu.razon_social.value;
	var nit = document.formu.nit.value;
	
	if(!v1.test(nombres)){
		alert("Los nombres son incorrectos o el campo esta vacio");
		document.formu.nombres.focus();
		return;
	}
	if((apellidos=="")){
		alert("Por favor introduzca sus apellidos");
		document.formu.apellidos.focus();
		return;

	}
	if(ci==""){
		alert("Por favor ingrese el numero de ci");
		document.formu.ci.focus();
		return;
	}
    if((razon_social=="")){
		alert("Por favor introduzca a que razon social");
		document.formu.razon_social.focus();
		return;

	}
    if((nit=="")){
		alert("Por favor introduzca su NIT");
		document.formu.nit.focus();
		return;

	}
	document.formu.submit();
}