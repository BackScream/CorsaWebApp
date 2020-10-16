<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Project R | Home</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/util.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/main.css" />">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-home100">
				<table>
					<thead>
						<tr>
							<td>Id</td>
							<td>Coordinate di partenza</td>
							<td>Coordinate di arrivo</td>
							<td>Data e ora di partenza</td>
							<td>Data e ora di arrivo</td>
							<td>Id mezzo</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var = "percorso" items = "${ percorsi }">
							<tr>
								<td>${ percorso.id }</td>
								<td>${ percorso.partenzaGps }</td>
								<td>${ percorso.arrivoGps }</td>
								<td>${ percorso.partenzaDateTime }</td>
								<td>${ percorso.arrivoDateTime }</td>
								<td>${ percorso.idMezzo }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="<c:url value="assets/vendor/jquery/jquery-3.2.1.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="assets/vendor/animsition/js/animsition.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="assets/vendor/bootstrap/js/popper.js" />"></script>
	<script src="<c:url value="assets/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="assets/vendor/select2/select2.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="assets/vendor/daterangepicker/moment.min.js" />"></script>
	<script src="<c:url value="assets/vendor/daterangepicker/daterangepicker.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="assets/vendor/countdowntime/countdowntime.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="assets/js/main.js" />"></script>