"use strict"
function validar (){
	var nombres = document.formu.nombres.value;
	var ap = document.formu.ap.value;
	var am = document.formu.am.value;
	var ci = document.formu.ci.value;
	var direccion = document.formu.direccion.value;
	var telefono = document.formu.telefono.value;
    var fecha_inicio = document.formu.fecha_inicio.value;
    var fecha_fin = document.formu.fecha_fin.value;
	
	if((!v1.test(nombres))){
		alert("Los nombres son incorrectos o el campo esta vacio");
		document.formu.nombres.focus();
		return;
	}
	if ((ap=="") && (am=="")) {
		alert("Por favor introduzca un apellido");
		document.formu.ap.focus();
		return;
	}
	if(ci==""){
		alert("Por favor ingrese el numero de ci");
		document.formu.ci.focus();
		return;
	}
	if(direccion==""){
		alert("Por favor ingrese la direccion");
		document.formu.direccion.focus();
		return;
	}
	if(telefono==""){
		alert("Por favor ingrese el numero de telefono");
		document.formu.telefono.focus();
		return;
	}
	if(fecha_inicio==""){
		alert("Por favor ingrese la fecha de inicio");
		document.formu.fecha_inicio.focus();
		return;
	}
	if(fecha_fin==""){
		alert("Por favor ingrese la fecha fin");
		document.formu.fecha_fin.focus();
		return;
	}
	if(fecha_inicio>fecha_fin){
		alert("Introdusca una fecha adecuada");
		document.formu.fecha_inicio.focus();
		return;
	}
	document.formu.submit();
}