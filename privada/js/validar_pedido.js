"use strict"
function validar(){
	var id_cliente=document.formu.id_cliente.value;
	var monto_cancelar=document.formu.monto_cancelar.value;
	var fecha_pedido=document.formu.fecha_pedido.value;
	var fecha_entrega=document.formu.fecha_entrega.value;

	if(id_cliente == ""){
		alert("Por favor seleccione un cliente");
		document.formu.id_cliente.focus();
		return;
	}
	if (!v4.test(monto_cancelar)) {
		alert("error en el monto")
		document.formu.monto_cancelar.focus();
		return;
	}
	if(fecha_pedido == "" || fecha_pedido > fecha_entrega){
		alert("La fecha de pedido debe ser menor a la de entrega")
		document.formu.fecha_pedido.focus();
		return;
	}
	document.formu.submit();
}