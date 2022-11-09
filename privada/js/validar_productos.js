"use strict"
function validar(){
	var producto = document.formu.producto.value;
	var caracteristica = document.formu.caracteristica.value;
	var precio= document.formu.precio.value;
	

	if(producto == ""){
		alert("producto esta vacia");
		document.formu.producto.focus();
		return;
	}
	if(caracteristica == ""){
		alert("caracteristica esta vacia");
		document.formu.caracteristica.focus();
		return;
	}
	if(precio == ""){
		alert("precio esta vacia");
		document.formu.precio.focus();
		return;
	}

	document.formu.submit();
}