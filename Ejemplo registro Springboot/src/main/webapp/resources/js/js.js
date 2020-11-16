function validarDV(e) {
	tecla = (document.all) ? e.keyCode : e.which;
	//Tecla de retroceso para borrar, siempre la permite
	if (tecla == 8) {
		return true;
	}
	// Patron de entrada, en este caso solo acepta numeros y k
	patron = /[K-Kk-k0-9]/;
	tecla_final = String.fromCharCode(tecla);
	return patron.test(tecla_final);
}

function validarNum(e) {
	tecla = (document.all) ? e.keyCode : e.which;
	//Tecla de retroceso para borrar, siempre la permite
	if (tecla == 8) {
		return true;
	}
	// Patron de entrada, en este caso solo acepta números
	patron = /\d/;
	te = String.fromCharCode(tecla);
	return patron.test(te);
}

function validarLetra(e) {
	tecla = (document.all) ? e.keyCode : e.which;
	//Tecla de retroceso para borrar, siempre la permite
	if (tecla == 8) {
		return true;
	}
	// Patron de entrada, en este caso solo acepta letras
	patron = /[a-zA-Z]/;
	te = String.fromCharCode(tecla);
	return patron.test(te);
}

function eliminar(id) {
	if (window.confirm("¿Estas seguro de eliminar a este estudiante?")) {
		document.getElementByID("del").submit();
	}
}

/* Funcionamiento del Pop Up en la página*/

/*var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
	overlay = document.getElementById('overlay'),
	popup = document.getElementById('popup'),
	btnCerrarPopup = document.getElementById('btn-cerrar-popup');

btnAbrirPopup.addEventListener('click', function(){
	overlay.classList.add('active');
	popup.classList.add('active');
});

btnCerrarPopup.addEventListener('click', function(e){
	e.preventDefault();
	overlay.classList.remove('active');
	popup.classList.remove('active');
});*/

