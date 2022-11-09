"use strict"
function validar(){
	var persona = document.Sistema.persona.selectedIndex;


	 if (persona== "") {
		alert("El tipo de persona esta vacia")
		document.Sistema.persona.focus();
		return;
	}
	alert("DATOS CORRECTOS");
}