<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Narrow Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="narrow-jumbotron.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills float-right">
            <li class="nav-item">
              <a class="nav-link active" href="index">Inicio <span class="sr-only">(current)</span></a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="listar">Mostrar Estudiantes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="buscar">Buscar Estudiante</a>
            </li>
          </ul>
        </nav>
        
      </div>

      <div class="jumbotron">
        <h1 class="display-3">Agregar Estudiante</h1>
        <p class="lead">Ingresa los datos solicitados en el formulario</p>
        
      </div>

<form:form action="formulario" method="POST" modelAttribute="usuario">
<form:label path="rut">Rut<form:input type="text" path="rut"/></form:label>
<form:errors path="rut"></form:errors>
<form:label path="dv">Dv<form:input type="text" path="dv"/></form:label>
<form:errors path="dv"></form:errors>
<form:label path="nombre">Nombre: <form:input type="text" path="nombre"/></form:label>
<form:errors path="nombre"></form:errors>
<form:label path="apellido">Apellido: <form:input type="text" path="apellido"/></form:label>
<form:errors path="apellido"></form:errors>
<form:label path="edad">Edad: <form:input type="number" path="edad"/></form:label>
<form:errors path="edad"></form:errors>
<form:button>Enviar</form:button>
</form:form>
</body>
</html>