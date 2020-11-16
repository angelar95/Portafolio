<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Clientes</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/css/estilo.css" rel="stylesheet">
<link href="resources/css/buscar.css" rel="stylesheet">
<link href="resources/css/popUp.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

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
	<form:form action="modificarUsuario" method="POST"
		modelAttribute="usuario" class="form-horizontal">
		<c:forEach items="${usuarios}" var="user">
			<form:hidden path="rut" value="${user.rut}" />
			<form:hidden path="dv" value="${user.dv}" />
			<div class="form-group">
				<label>Nombre:</label>
				<form:label path="nombre">${user.nombre}</form:label>
					<form:label path="apellido">${user.apellido}</form:label>
				<div class="col-md-4">
					<form:hidden path="nombre" value="${user.nombre}" /> 
					<form:hidden path="apellido" value="${user.apellido}" /> 
				</div>
			</div>
			<div class="form-group">
				<form:label path="direccion" class="col-md-4 control-label">Dirección: </form:label>
				<div class="col-md-4">
					<form:input path="direccion" placeholder="Dirección"
						class="form-control input-md" value="${user.direccion}" />

					<form:errors class="errores" path="direccion"></form:errors>
				</div>
			</div>
			<div class="form-group">
				<form:label path="ciudad" class="col-md-4 control-label">Ciudad: </form:label>
				<div class="col-md-4">
					<form:input path="ciudad" placeholder="Ciudad"
						class="form-control input-md" value="${user.ciudad}" />

					<form:errors class="errores" path="ciudad"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="submit"></label>
				<div class="col-md-8">
					<form:button class="btn btn-dark">Enviar</form:button>

				</div>
			</div>
		</c:forEach>


	</form:form>



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
							name="rut" required="required" minlength="7" maxlength="8"
							onkeypress="return validarNum(event)">
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
			<h3>Busca el cliente a eliminar</h3>
			<div class="contenedor-inputs">

				<form action="buscarEliminarR" method="post">
					<div class="form-group">
						<input class="form-control input-md" type="text"
							class="form-control" placeholder="Ingrese Rut sin DV del Cliente"
							name="rut" required="required" minlength="7" maxlength="8"
							onkeypress="return validarNum(event)">
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