<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Acá se listan los usuarios</h1>
	<a href="index">Inicio</a>
	<br>
	<div>
		<c:forEach items="${usuarios}" var="user">
			<div>
				<label>Rut: ${user.rut}</label><br>
			</div>
			<div>
				<label>dv: ${user.dv}</label><br>
			</div>
			<div>
				<label>Nombre: ${user.nombre}</label><br>
			</div>
			<div>
				<label>Apellido: ${user.apellido}</label> <br>
			</div>
			<div>
			<label>Edad: ${user.edad}</label>
			<br></div>
			<div>
			<form:form action="modificar" method="POST" modelAttribute="usuario">
				<form:hidden path="rut" value="${user.rut}" />
				<form:hidden path="dv" value="${user.dv}" />
				<form:button>Modificar</form:button>
			</form:form>
			</div>
			<div>
			<form:form action="eliminar" method="POST" modelAttribute="usuario">
				<form:hidden path="rut" value="${user.rut}" />
				<form:hidden path="dv" value="${user.dv}" />
				<form:button>Eliminar</form:button>
			</form:form>
			</div>
		</c:forEach>
	</div>
</body>
</html>