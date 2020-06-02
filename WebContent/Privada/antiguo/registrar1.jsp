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
<link rel="stylesheet" href="/ProjectJPAUPS/config/styles/main.css" />

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
<link rel="stylesheet" href="/ProjectJPAUPS/config/styles/stylesRT.css">
<script type="text/javascript" src="/ProjectJPAUPS/config/JS/validaciones.js"></script>

</head>
<body class="is-preload" id="Registr">
	<c:set var="p1" value="${requestScope['usuario']}" />
	<c:set var="p2" value="${requestScope['idc']}" />

<!-- Header -->
	<div id="header">

		<div class="top">

				<!-- Logo -->
			<div id="logo">
				<h1 id="title">${p1.nombres} ${p1.apellidos}</h1>
				<p >${p1.correo}</p>
				<hr id="parafoq">
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="/ProjectJPAUPS/IndexController?id=2&idU=${p1.cedula}" id="contact-link"><span class="icon solid fa-envelope">Contactos</span></a></li>
					<li><a href="/ProjectJPAUPS/IndexController?id=1&c=${p1.cedula}"><span class="icon solid fa-home">Registrar nuevo contacto </span></a></li>
					<li><a href="/ProjectJPAUPS/CerrarSesion" id="top-link"><span class="icon solid fa-home">Cerrar sesion</span></a></li>


					</div>
				</ul>
			</nav>
		</div>
	</div>

	<!-- Main -->
	<div id="main2">


		<!-- Contact -->
		<section id="contact" class="four">
			<div class="container">

				<div class="contenido">

					<div class="contenedor">

						<form action="/ProjectJPAUPS/RegistrarContacto?ced=${p2}" method="POST" onsubmit="return validarCamposObligatorios()">
							<div class="container">
								<h1>Registrar contacto:</h1>
								<hr>

								<label for="tipo"><b>Tipo</b></label>
								<div class="container mt-3">
									<select name="tip" id="seleccion" class="custom-select mb-3">
										<option selected>Seleccionar</option>
										<option value="Celular">Celular</option>
										<option value="Telefono">Telefono</option>
									</select>
								</div>


								<label for="numero"><b>Numero</b></label> <input id="numerosID" type="text"
									placeholder="Ingresar el numero" name="numerotxt" onkeypress="ValidarTelefono(event, 'mensajeTelefono', this)" required><span id="mensajeTelefono"></span>


								<label for="operadora"><b>Operadora</b></label> <input
									type="text" id="operadoraID" placeholder="Ingresar operadora"
									name="operadoratxt" onkeypress="ValidarLetras(event, 'operadoramss', this)" required><span id="operadoramss"></span>

								<hr>

								<button type="submit" value="registrarTelf" name="registrartelf"
									class="registerbtn">Registrar</button>
							</div>

						</form>

					</div>

				</div>

			</div>
		</section>

	</div>




</body>
</html>