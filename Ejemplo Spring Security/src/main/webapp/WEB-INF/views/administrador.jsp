<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrador</title>



<link rel="stylesheet" href="css/bootstrap.min.css">

<!--Fontawesome CDN-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<div class="container col-12">
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
									
								<a class="nav-link texto" href="/servicioturismo">Turismo</a>

								</div>
								<div class="form-group">
									<a class="nav-link texto " href="/serviciopremium">Premium</a>
								</div>
								
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}"> <input
									class="btn btn-lg btn-success btn-block" type="submit"
									value="Iniciar Sesión">
							</fieldset>
						</form>
						
			</div>
                
            </div>
        </div>
    </div>

</body>
</html>