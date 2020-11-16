
/* Funcionamiento del Pop Up buscar*/
var btnBuscarPopup = document.getElementById('btn-buscar-popup'),
	overlays = document.getElementById('overlays'),
	popups = document.getElementById('popups'),
	btnCerrarPopups = document.getElementById('btn-cerrar-popups');

btnBuscarPopup.addEventListener('click', function(){
	overlays.classList.add('active');
	popups.classList.add('active');
});

btnCerrarPopups.addEventListener('click', function(e){
	e.preventDefault();
	overlays.classList.remove('active');
	popups.classList.remove('active');
});

/* Funcionamiento del Pop Up eliminar*/
var btnEliminarPopup = document.getElementById('btn-eliminar-popup'),
	overlayss = document.getElementById('overlayss'),
	popupss = document.getElementById('popupss'),
	btnCerrarPopups = document.getElementById('btn-cerrar-popupss');

btnEliminarPopup.addEventListener('click', function(){
	overlayss.classList.add('active');
	popupss.classList.add('active');
});

btnCerrarPopups.addEventListener('click', function(e){
	e.preventDefault();
	overlayss.classList.remove('active');
	popupss.classList.remove('active');
});