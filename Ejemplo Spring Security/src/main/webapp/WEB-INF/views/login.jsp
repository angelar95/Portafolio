<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=, initial-scale=1.0">
<title>Login Page</title>
<!--Made with love by Mutiullah Samim -->

<!------ Include the above in your HEAD tag ---------->

<!--Bootsrap 4 CDN-->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Inicio de sesión</h3>
                   
                </div>
                <div class="card-body">

						<form action="/login" method="Post" accept-charset="UTF-8"
							role="form">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="Nombre Usuario"
										name="username" type="text">
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Contraseña"
										name="password" type="password" value="">
								</div>
								
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}"> <input
									class="btn btn-lg btn-success btn-block" type="submit"
									value="Iniciar Sesión">
							</fieldset>
						</form>
						<c:if  test="${param.error != null }">
						<br>
							<p style="color:red;">Datos no válidos</p>
						</c:if>
			</div>
                
            </div>
        </div>
    </div>
</body>
</html>