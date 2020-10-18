<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Storico percorsi</title>
</head>
<body>
	<p>storico: <br> ${percorsi}</p>
	<p> Clicca qui per continuare: <a href="./homepage">Homepage</a></p>
	   	<c:forEach var = "i" items="${percorsi}">
		    <c:out value = "${i}"/><p>
		</c:forEach>
</body>
</html>