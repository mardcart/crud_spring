<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>listado de usuarios registrados</title>
</head>
<body>
  <h2>listado de usuarios</h2>
  
  <table border="1">
  	<tr>
  		<th>nombre</th>
  		<th>apellido</th>
  		<th>email</th>
  		<th>telefono</th>
  		<th>estado</th>
  		<th>modificar</th>

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
		<td><a href="${linkActualizar}"><input/ type="button" value="editar"></a></td>
		<td><a href="${linkEliminar}"><input type="button" value="eliminar" 
			onclick="if(!(confirm('vas a eliminar un registro. estas seguro?'))) return false "/></a></td>

  	</tr>
  	
  	</c:forEach>
  
  </table>
  </br>
  <input type="button" value="registrar usuario" onclick="window.location.href='mostrarFormulario'; return false;"/>
</body>
</html>