<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="registrarUsuario" modelAttribute="datoUsuario" method="post">
		<table>
		<form:hidden path="id"/>
			<tr>
				<td>NOMBRE</td>
				<td><form:input path="nombre"/></td>
			</tr>
			<tr>
				<td>APELLIDO</td>
				<td><form:input path="apellido"/></td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td><form:input path="email"/></td>
			</tr>
			<tr>
				<td>TELEFONO</td>
				<td><form:input path="telefono"/></td>
			</tr>
			<tr>
				 <td>ESTADO:</td>   
		       <td> activo<form:radiobutton path="estado" value="true"/>  
		        inactivo<form:radiobutton path="estado" value="false"/> </td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="guardar"/></td>
			</tr>
						
		</table>
	</form:form>
</body>
</html>