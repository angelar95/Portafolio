<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Inicio</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/css/estilo.css" rel="stylesheet">
<link href="resources/css/buscar.css" rel="stylesheet">
<link href="resources/css/popUp.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-danger navbar-dark">
		<!-- Brand/logo -->
		<a class="navbar-brand" href="/"> <img
			src="https://cdn.worldvectorlogo.com/logos/bank-of-china.svg"
			alt="logo" style="width: 100px;">
		</a>

		<!-- Links -->
		<ul class="navbar-nav">


			<li class="nav-item"><a class="nav-link" href="agregar">Agregar
			</a></li>
			 <li class="nav-item"><a class="nav-link"
				class=" btn-buscar-popup" id="btn-buscar-popup">Modificar</a></li>
			<li class="nav-item"><a class="nav-link"
				class=" btn-eliminar-popup" id="btn-eliminar-popup">Eliminar</a></li>
			<li class="nav-item"><a class="nav-link" href="listar">Listar
					Clientes</a></li>

		</ul>
	</nav>


	<div class="jumbotron">
		<h1 class="display-3">Bank of China</h1>
		<p class="lead">El Bank of China, es uno de los cuatro bancos
			comerciales propiedad del estado más grandes de la República Popular
			China. Fue fundado en 1912 por el Gobierno de la República de China,
			en sustitución del Banco de Gobierno de la China Imperial. Es el
			banco más antiguo de China.</p>
	</div>


	<div id="demo" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://estaticos.efe.com/efecom/recursos2/imagen.aspx?-P-2fL4Jfo8HOMjOoGXrqQM2bFaCA9ONwFFlQ4TncnkXVSTX-P-2bAoG0sxzXPZPAk5l-P-2fU5UzPy-P-2fcPO3BZhV7tzHDj364A-P-3d-P-3d"
					alt="Los Angeles" width="1100" height="500">
			</div>
			<div class="carousel-item">
				<img
					src="https://agenciafe.com/data/img_cont/img_imagenes/149376.png"
					alt="Chicago" width="1100" height="500">
			</div>
			<div class="carousel-item">
				<img
					src="https://www.latercera.com/resizer/cNmBNIQtqdQFE3AvE1tE2OZXLkI=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/EZSG34RNHJAEVPCPFSART25AEI.jpg"
					alt="New York" width="1100" height="500">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>

	<!--  Pop Up Integrantes -->
	<div class="overlay" id="overlay">
		<div class="popup" id="popup">
			<a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i
				class="fas fa-times"></i></a>
			<h3>Integrantes</h3>
			<div class="contenedor-inputs">
				<p>Angela Romero</p>
				<p>Claudia Martinez</p>
				<p>Daniel Céspedes</p>
				<p>Nicolas Caro</p>
			</div>
		</div>
	</div>

	<!-- Pop Up Buscar -->
	<div class="overlays" id="overlays">
		<div class="popups" id="popups">
			<a href="#" id="btn-cerrar-popups" class="btn-cerrar-popups"><i
				class="fas fa-times"></i></a>
			<h3>Busca el cliente a modificar</h3>
			<div class="contenedor-inputs">

				<form action="buscarUsuarioR" method="post">
					<div class="form-group">
						<input class="form-control input-md" type="text"
							class="form-control" placeholder="Ingrese Rut sin DV del Cliente"
							name="rut" required="required" minlength="7" maxlength="8" onkeypress="return validarNum(event)">
					</div>
					<button value="buscar" type="submit" class="btn btn-dark">Buscar</button>
				</form>
			</div>
		</div>
	</div>

	<div class="overlayss" id="overlayss">
		<div class="popupss" id="popupss">
			<a href="#" id="btn-cerrar-popupss" class="btn-cerrar-popupss"><i
				class="fas fa-times"></i></a>
			<h3>Ingresa el cliente a eliminar</h3>
			<div class="contenedor-inputs">

				<form action="buscarEliminarR" method="post">
					<div class="form-group">
						<input class="form-control input-md" type="text"
							class="form-control" placeholder="Ingrese Rut sin DV del Cliente"
							name="rut" required="required" minlength="7" maxlength="8" onkeypress="return validarNum(event)">
					</div>
					<button value="buscar" type="submit" class="btn btn-dark">Buscar</button>
				</form>
			</div>
		</div>
	</div>

	<script src="resources/js/js.js"></script>
	<script src="resources/js/buscar.js"></script>
</body>

<div class="footer bg-danger">
	<p>Copyright © BANK OF CHINA(BOC) All Rights Reserved.</p>
</div>
</html>