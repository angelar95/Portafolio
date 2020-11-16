<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<link href="narrow-jumbotron.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<header>


	<nav class="navbar navbar-inverse ">
		<ul class="nav navbar-nav pull-xs-right">
			<div class="container-fluid " >
				<div class="col-s-12">
					<a class="navbar-brand" href="index">Inicio</a>
				</div>
				<div class="col-s-12">

					<li><a class="navbar-brand"href="listar">Ver</a></li>

				</div>
				
				<form class="navbar-form navbar-left" action="buscarUsuario" method="post">
					<div class="form-group col-s-12" >
						<input type="text" class="form-control" placeholder="Search"
							name="nombre">						
					</div>
					<div class="form-group col-s-12" >
					<button class="btn btn-success" type="submit" value="buscar">Buscar</button>
					
				</form>
				
			</div>
		</ul>
	</nav>

</header>


	<div class="jumbotron">
		<h1 class="display-3">Escuelita Grupo 1</h1>
		<p class="lead">Esta es la página del Grupo 1, para agregar,
			buscar, modificar y eliminar estudiantes con Base de datos.</p>
		<p>
			<a class="btn btn-lg btn-success" href="agregar" role="button">Agregar
				Estudiante</a>
		</p>
	</div>

	<div class="row marketing">
		<div class="col-lg-6">
			<h4>Integrantes</h4>
			<p>Angela Romero.</p>
			<p>Claudia Martinez.</p>
			<p>Daniel Céspedes.</p>
			<p>Nicolas Caro.</p>
		</div>

		<div class="col-lg-6">
			<h4>Subheading</h4>
			<p>Donec id elit non mi porta gravida at eget metus. Maecenas
				faucibus mollis interdum.</p>

			<h4>Subheading</h4>
			<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
				Cras mattis consectetur purus sit amet fermentum.</p>

			<h4>Subheading</h4>
			<p>Maecenas sed diam eget risus varius blandit sit amet non
				magna.</p>
		</div>
	</div>

	<footer class="footer">
		<p>© Company 2020</p>
	</footer>

	</div>
	<!-- /container -->


</body>
</html>