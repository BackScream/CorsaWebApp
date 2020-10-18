<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>

<!DOCTYPE html>
<html>
	<head>
		<title>CORSA WEB APP</title>
		<style>
		</style>
	</head>
	<body>
		<h2>Ciao ${utente.nome} ${utente.cognome}!</h2>
		
		<h2><em>Benvenuto nel menu di Corsa Web App!</em></h2><br>

		<%
		DateTimeFormatter f = DateTimeFormatter.ofPattern("dd - MMMM - yyyy, hh:mm");
		LocalDateTime now = LocalDateTime.now();
		out.println("Oggi: " + now.format(f));
		%>
		
		<h4>Visita lo storico delle tue corse!: <a href="./storico">storico corse</a></h4>
		<br>
		<h2 style="color:DodgerBlue;">${errore}</h2>
		
		<h3>Hai raggiunto un nuovo traguardo? </h3>
		<h3>Inseriscilo nel tuo storico:</h3>
		<form action="./homepage" method="post" name="invio" >
		  <p>Indirizzo o coordinate GPS( "Latitudine (N), Longitudine (E)" ):</p><br>
			PARTENZA:&nbsp;<input type="text" name="partenzaGps" placeholder="Vinicio" required/><br>
			ARRIVO:&nbsp;<input type="text" name="arrivoGps" placeholder="Marchioni" required/><br>
			
		  <p>Data e ora:</p><br>	
			PARTENZA:&nbsp;<input type="text" name="partenzaDateTime" value="" required/><br>
			ARRIVO:&nbsp;<input type="text" name="arrivoDateTime" value="" placeholder="" required/><br>
			
		  <p>MEZZO:</p>
			MEZZO&nbsp;<input type="text" name="idMezzo" value="" required /><br>
						
 			<input type="submit" value="INVIO" />
		</form>

	</body>
</html>
