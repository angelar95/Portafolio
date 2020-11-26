<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Formulario </h1>
            <div class="contenedor">
                <form action="validador" method="POST">
                    <div>
                        <label>ID: </label>
                        <input type="number" name="ID">
                    </div>
                    <div>
                        <label>Nombre: </label>
                        <input type="text" name="txtNombre">
                    </div>
                    <div>
                        <label>Precio: </label>
                        <input type="number" name="precio">
                    </div>
                    <div>
                        <label> Stock: </label>
                        <input type="number" name="stock">
                    </div>
                    <div>
                        <input type="submit" value="Enviar">
                    </div>
                </form>

            </div>
</body>
</html>