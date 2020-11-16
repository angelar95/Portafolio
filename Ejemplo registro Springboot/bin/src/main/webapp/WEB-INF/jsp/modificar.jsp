<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Acá se modifican los datos</h1>
<form:form action="modificarUsuario" method="POST" modelAttribute="usuario">
<form:hidden path="rut" value="${u.rut}"/>
<form:hidden path="dv" value="${u.dv}"/>
<form:label path="nombre">Nombre: <form:input type="text" path="nombre" value="${u.nombre}"/> </form:label>
<form:label path="apellido">Apellido: <form:input type="text" path="apellido" value="${u.apellido}"/> </form:label>
<form:label path="edad">Edad: <form:input type="number" path="edad" value="${u.edad}"/> </form:label>
<form:button>Enviar</form:button>
</form:form>

</body>
</html>