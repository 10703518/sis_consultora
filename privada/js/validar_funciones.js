"use strict"
function validar(){
	var id_personal=document.formu.id_personal.value;
	var descripcion=document.formu.descripcion.value;
	var funcion=document.formu.funcion.value;

	if(id_personal == ""){
		alert("Por favor seleccione un personal");
		document.formu.id_personal.focus();
		return;
	}
	if(descripcion== ""){
		alert("Por favor ingrese la descripcion")
		document.formu.descripcion .focus();
		return;
	}
	if(funcion ==""){
		alert("Por favor ingrese la funcion");
		document.formu.funcion.focus();
		return;
	}
	document.formu.submit();
} 