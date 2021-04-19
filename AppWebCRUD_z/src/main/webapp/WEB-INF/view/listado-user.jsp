<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>listado de usuarios registrados</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<div class="row">
				  <h2 class="text-center text-info" >listado de usuarios</h2>
		
		</div>
		<div class="row">
  
			  	<table class="table">
			  	<tr class="table-warning ">
			  		<th>nombre</th>
			  		<th>apellido</th>
			  		<th>email</th>
			  		<th>telefono</th>
			  		<th>estado</th>
			  		<th>modificar</th>
			  		<th>eliminar</th>
			  		
			
			  	</tr>
			  	<c:forEach var="dato" items="${listaUsers}" >
			  	<c:url var="linkActualizar" value="/usuario/actualizarUsuario">
			  		<c:param name="idUsuario" value="${dato.id}"></c:param>
			  	</c:url>
			  	<c:url var="linkEliminar" value="/usuario/eliminarUsuario">
			  		<c:param name="idUsuario" value="${dato.id}"></c:param>
			  	</c:url>
			  	<tr>
			  		<td>${dato.nombre}</td>
			  		<td>${dato.apellido}</td>
			  		<td>${dato.email}</td>
			  		<td>${dato.telefono}</td>
			  		<td>${dato.estado}</td>
					<td><a href="${linkActualizar}"><input class="btn btn-success" type="button" value="editar"/></a></td>
					<td><a href="${linkEliminar}"><input class="btn btn-danger" type="button"  value="eliminar" 
						onclick="if(!(confirm('vas a eliminar un registro. estas seguro?'))) return false "/></a></td>
			
			  	</tr>
			  	
			  	</c:forEach>
			  
			  </table>
		</div>  
		<hr class="bg-info">			
 		<div class="row">
 			 <input class="form-control btn-info" type="button" value="registrar usuario" onclick="window.location.href='mostrarFormulario'; return false;"/>
		</div>

	</div>  
  
</body>
</html>