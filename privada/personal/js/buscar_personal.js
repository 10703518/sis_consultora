"use strict"
function buscar_personal(){
  var d1, d2, d3,ajax,url,param,contenedor;
  contenedor =document.getElementById('personal1');
   d1 =document.formu.ci.value;
   d2 =document.formu.fecha_inicio.value;
   d3 =document.formu.fecha_fin.value;
   ajax=nuevoAjax();
   url="ajax_buscar_personal.php"
   param="ci="+d1+"&fecha_inicio="+d2+"&fecha_fin="+d3;
   ajax.open("POST",url,true);
   ajax.setRequestHeader('Content-type','application/x-www-form-urlencoded');
   ajax.onreadystatechange = function(){
   	if (ajax.readyState == 3) {
   		contenedor.innerHTML = ajax.responseText;
   	 }
   }
   ajax.send(param);
}