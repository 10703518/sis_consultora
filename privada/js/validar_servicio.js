"use strict"
function validar (){
	
	var descripcion = document.formu.descripcion.value;
	var servicio = document.formu.servicio.value;
	
	if(descripcion==""){
		alert("descripcion");
		document.formu.descripcion.focus();
		return;
	}
	if(servicio==""){
		alert("Por favor introduzca un servicio");
		document.formu.servicio.focus();
		return;
	}
	document.formu.submit();
}