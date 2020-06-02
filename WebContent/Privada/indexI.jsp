<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Prologue by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="/ProjectJPAUPS/config/styles/main.css" />
</head>
<body class="is-preload">
	<c:set var="p1" value="${requestScope['telefono']}" />

<!-- Header -->
	<div id="header">

		<div class="top">

			<!-- Logo -->
			<div id="logo">
				
				<p >AGENDA TELEFONICA</p>
				<hr id="parafoq">
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
				<li><a class="page-scroll" href="/ProjectJPAUPS/Public/index.html"><span class="icon solid fa-home">Inicio</span></a></li> 
					</div>
				</ul>
			</nav>
		</div>
	</div>
	

	<!-- Main -->
	<div id="main">


		<!-- Contact -->
		<section id="contact" class="four">
			<div class="container">
				<div class="container mt-3">



					<form action="/ProjectJPAUPS/Buscar?id=1" method="POST">
						<div class="input-group mb-3 input-group-sm">
							<div class="input-group-prepend">
								<button class="input-group-text1" name="buscarCorreo" value="correoB" type="submit">Buscar</button>
								<br>
							</div>
							
							<input type="text" class="form-control" id="rella" name="correo" placeholder="Ingrese un correo electronico">
						</div>
					</form>




					<form action="/ProjectJPAUPS/Buscar?id=2" method="POST">
						<div class="input-group mb-3 input-group-sm">
							<div class="input-group-prepend">
								<button class="input-group-text1" name="buscarCed" value="cedulaB" type="submit">Buscar</button>
								<br>
							</div>
							<input type="text" class="form-control" id="rella"  name="cedula" placeholder="Ingrese un numero de cedula">
						</div>
					</form>






					<br>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Nombres</th>
								<th>Email</th>
								<th>Tipo</th>
								<th>Operadora</th>
								<th>Numero</th>
							</tr>
						</thead>
						<tbody id="myTable">

							<c:forEach var="telf" items="${p1}">
								<tr>
									<td>${telf.usuario.nombre} ${telf.usuario.apellido}</td>
									<td>${telf.usuario.correo}       <a href="mailto:${telf.usuario.correo} "><img width="25px"
											height="25px"
											src="https://img.icons8.com/flat_round/64/000000/secured-letter--v1.png" /></a></td>
									<td>${telf.tipo}</td>
									<td>${telf.operadora}</td>
									<td>${telf.numero}    <a href="tel:${telf.numero} "><img width="25px"
											height="25px"
											src="https://img.icons8.com/ultraviolet/40/000000/phone.png" /></a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</section>

	</div>
</body>
</html>