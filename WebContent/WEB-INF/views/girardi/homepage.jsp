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
				<form class="login100-form validate-form" action="" method="post">
					<span class="login100-form-title p-b-26">
						Inserisci un itinerario
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="partenzaGps">
						<span class="focus-input100" data-placeholder="Coordinate di partenza"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="arrivoGps">
						<span class="focus-input100" data-placeholder="Coordinate di arrivo"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="partenzaDateTime">
						<span class="focus-input100" data-placeholder="Data e ora di partenza"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="arrivoDateTime">
						<span class="focus-input100" data-placeholder="Data e ora di arrivo"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						<select name="selezione-tabella" id="selezione-tabella">
							<option value="">- Mezzi -</option>
							<c:forEach var = "mezzo" items = "${ mezzi }">
								<option value="${ mezzo.id }">${ mezzo }</option>
							</c:forEach>
						</select>
					</div>

					<div class="container-login100-form-btn">
					${ errore }
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Inserisci
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Non devi inserire?
						</span>

						<a class="txt2" href="./storico">
							Vedi storico risultati
						</a>
					</div>
				</form>
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

</body>
</html>