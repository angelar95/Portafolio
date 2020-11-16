<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrador</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>


    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Escoja un servicio</h3>
                    <!--<div class="d-flex justify-content-end social_icon">
                        <span><i class="fab fa-facebook-square"></i></span>
                        <span><i class="fab fa-google-plus-square"></i></span>
                        <span><i class="fab fa-twitter-square"></i></span>
                    </div> -->
                </div>
                <div class="card-body" style="text-align: center;">
                    <a class="nav-link texto"  href="/servicioturismo">Turismo</a>
                    <a class="nav-link texto"  href="/serviciopremium">Premium</a>   
                    <form action="/logout" method="post">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}">
					<button class="btn btn-danger">Cerrar sesión</button>
				</form>
                </div>
                
            </div>
        </div>
    </div>
</body>
</html>