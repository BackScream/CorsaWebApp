<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Storico percorsi</title>
</head>
<body>
	<a href="./homepage">Homepage</a>
	
	<p>storico: <br></p>

   	<c:forEach var = "i" items="${percorsi}">
	    <c:out value = "${i}"/><p>
	</c:forEach>
</body>
</html>