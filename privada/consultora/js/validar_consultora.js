"use strict"
function validar (){
	var nombre = document.formu.nombre.value;
	var foto = document.formu.foto.value;
	var pagina_web = document.formu.pagina_web.value;


	if(nombre==""){
		alert("Los nombres son incorrectos o el campo esta vacio");
		document.formu.nombre.focus();
		return;
	}
	if(pagina_web==""){
		alert("Los nombres son incorrectos o el campo esta vacio");
		document.formu.pagina_web.focus();
		return;
	}
	document.formu.submit();
}