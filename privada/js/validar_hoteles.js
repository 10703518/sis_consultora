"use strict"
function validar(){
	var nombre = document.formu.nombre.value;
    var codigo = document.formu.codigo.value;
	var nombree = document.formu.nombree.value;
	var ciudad= document.formu.ciudad.value;
    
	if(nombre == ""){
		alert("Nombre del hotel esta vacia");
		document.formu.nombre.focus();
		return;
	}if(codigo == ""){
		alert("codigo esta vacia");
		document.formu.codigo.focus();
		return;
	}
	if(nombree == ""){
		alert("Nombre esta vacia");
		document.formu.nombree.focus();
		return;
	}
	if(ciudad == ""){
		alert("Ciudad esta vacia");
		document.formu.ciudad.focus();
		return;
	}
	
	document.formu.submit();
}