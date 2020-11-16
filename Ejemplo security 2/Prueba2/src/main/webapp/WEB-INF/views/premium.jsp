<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Servicio Premium</title>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i"
	rel="stylesheet">
<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="css/style2.css">

<!--Carrusel-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	<div>
		<nav class="navbar navbar-expand-lg  navbar navbar-dark bg-dark">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo03"
				aria-controls="navbarTogglerDemo03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">

					<li class="nav-item">

						<h5 class="nav-link" href="/">Servicio Premium</h5>

					</li>
					<sec:authorize access="hasAnyAuthority('admin')">
					<li class="nav-item"><a class="nav-link" href="/">Inicio</a></li>
					</sec:authorize>
					<li class="nav-item dropdown dmenu"><a
						class="nav-link dropdown-toggle" href="#" id="navbardrop"
						data-toggle="dropdown">Servicios </a>
						<div class="dropdown-menu sm-menu">
							<a class="dropdown-item" href="#">Traslado al aeropuerto</a> <a
								class="dropdown-item" href="#">Duty Free</a> <a
								class="dropdown-item" href="#">Lounge Key</a>
								<a
								class="dropdown-item" href="#">Luxury Hotel Collection</a>
								<a
								class="dropdown-item" href="#">Viajes</a>
								<a
								class="dropdown-item" href="#">Alojamiento</a>
								<a
								class="dropdown-item" href="#">Paquetes</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#">Contáctanos</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Llámanos</a></li>

				</ul>
				<div class="social-part">
					<form action="/logout" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}">
						<button class="btn btn-outline-danger">Cerrar sesión</button>
					</form>
				</div>
			</div>
		</nav>
	</div>

	<div id="demo" class="carousel slide  " data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://www.infobae.com/new-resizer/TmIwORggHQg7UNzU1loRcUPeSLM=/768x512/filters:format(jpg):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/02/21134600/Playas-TripAdvisor-SF-10.jpg"
					alt="Los Angeles">
				<div class="carousel-caption">
					<h3 id="h">Los Angeles</h3>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://www.infobae.com/new-resizer/A9qmzX7-rLNxCIWUpQYsp_RV6wI=/768x512/filters:format(jpg):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/02/21134641/Playas-TripAdvisor-SF-18.jpg"
					alt="Chicago">
				<div class="carousel-caption">
					<h3 id="h">Miami</h3>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://www.infobae.com/new-resizer/m3jb_jqhgSWjUeEsC7PqxIiQbjg=/768x432/filters:format(jpg):quality(85)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2018/02/21134543/Playas-TripAdvisor-SF-7.jpg"
					alt="New York">
				<div class="carousel-caption">
					<h3 id="h">Rio de Janeiro</h3>
					
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>

	<script type="text/javascript">
		$(document).ready(
				function() {
					$('.carousel').carousel()
					$('.navbar-light .dmenu').hover(
							function() {
								$(this).find('.sm-menu').first().stop(true,
										true).slideDown(150);
							},
							function() {
								$(this).find('.sm-menu').first().stop(true,
										true).slideUp(105)
							});
				});
	</script>
</body>
</html>