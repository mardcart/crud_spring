<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>formulario</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<div class="text-center text-success">completar formulario</div>
		<hr class="bg-info">
	<form:form action="registrarUsuario" modelAttribute="datoUsuario" method="post">
		<form:hidden path="id"/>

			<div class="form-group row">
				<label for="inNombre" class="col-sm-2 col-form-label">nombre</label>
				<div class="col-sm-10">
					<form:input path="nombre" class="form-control" id="inNombre" placeholder="ingrese nombre"/>
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label for="inApellido" class="col-sm-2 col-form-label">apellido</label>
				<div class="col-sm-10">
					<form:input path="apellido" class="form-control" id="inApellido" placeholder="ingrese apellido"/>
				</div>
			</div>
			<br>
			<div class="form-group row">
			<label for="inEmail" class="col-sm-2 col-form-label">email</label>
				<div class="col-sm-10">
					<form:input type="email" path="email" class="form-control" id="inEmail" placeholder="ingrese email" />
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label for="inTelefono" class="col-sm-2 col-form-label">telefono</label>
				<div class="col-sm-10">
					<form:input  type="number" path="telefono" class="form-control" id="indTelefono"/>
				</div>
			</div>
			<br>
			
			<div class="form-group row">
				<label for="inEstado" class="col-sm-2 col-form-label">estado</label>
				<div class="col-sm-10">
					activo  <form:radiobutton path="estado" value="true"/>  
		        	inactivo<form:radiobutton path="estado" value="false"/>
				
				</div>
			</div>
			<hr class="bg-info">
			<div class="form-group row">
				<input type="submit" value="GUARDAR" class="btn btn-success  btn-block"/>
			</div>						
	</form:form>			
	</div>
</body>
</html>