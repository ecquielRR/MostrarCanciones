<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Canciones</title>
</head>
<body>
	<h1> Lista de Canciones </h1>
	<c:forEach var="cancion" items="${listaDeCanciones}">
		<ul>
			<li>${cancion.titulo} | Autor: ${cancion.artista}</li>
			<a href="/canciones/detalle/${cancion.id}">Detalle</a>
		</ul>
		</c:forEach>
</body>
</html>