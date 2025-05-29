<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Cancion</title>
</head>
<body>
	<h1> Detalle de ${cancion.titulo} </h1>
		<ul>
			<li>Artista: ${cancion.artista} </li>
			<li>Album: ${cancion.album} </li>
			<li>Genero: ${cancion.genero} </li>
			<li>Idioma: ${cancion.idioma} </li>
		</ul>
		<a href="/canciones">Volver a la lista de canciones</a>
</body>
</html>