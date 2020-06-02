<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Inicio</title>
<meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1">
	
	
<link rel="stylesheet" href="/ProyectoDAO/config/styles/main.css" />

	<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/style.css">
        

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

</head>
<body class="is-preload">
	<c:set var="p1" value="${requestScope['telefono']}" />
	<c:set var="p2" value="${requestScope['usuario']}" />
       
        
         <!-- start preloader -->
        <div id="loader-wrapper">
            <div class="logo"></div>
            <div id="loader">
            </div>
        </div>
        <!-- end preloader -->
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		
		
<!-- Start Header Section -->
<header class="main_menu_sec navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-12">
				<div class="lft_hd">
					<a href="index.html"><img src="img/logo.png" alt=""/></a>
				</div>
			</div>		
			
					
			<div class="col-lg-9 col-md-9 col-sm-12">
				<div class="rgt_hd">					
					<div class="main_menu">
						<nav id="nav_menu">
							<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							</button>	
						<div id="navbar">
							<ul>
								<li><a class="page-scroll" href="/ProyectoDAO/Public/index.html">Inicio</a></li> 
							
							
								<li><a class="page-scroll" href="/ProyectoDAO/Public/login.jsp">Inicar Sesion</a></li>
								<li><a class="page-scroll" href="/ProyectoDAO/Public/crear_usuario.jsp">Registrarce</a></li>
								<li><a class="page-scroll" href="#">||</a></li>
								<li><h1 id="title">${p2.nombres} ${p2.apellidos}</h1></li>
								<li><p>${p2.correo}</p></li>
								<li><a href="/ProyectoDAO/IndexController?id=2&idU=${p2.cedula}" id="contact-link">Contactos</span></a></li>
								<li><a href="/ProyectoDAO/CerrarSesion" id="top-link">Cerrar sesion</span></a></li>
			
			
							</ul>
						</div>		
						</nav>			
					</div>					
						
				</div>
			</div>	
		</div>	
	</div>	
</header>
<!-- End Header Section -->
        
        
	

<br><br><br><br>
<br><br><br><br>
<br><br><br><br>

	<!-- Main -->
	<div id="main2">

		<!-- Contact -->
		<section id="contact" class="four">
			<div class="container">

				<div class="containe">
					<p>Agregar contacto nuevo</p>

					<a href="/ProyectoDAO/IndexController?id=1&c=${p2.cedula}"><button type="button"
							class="btn btn-secondary">Registrar</button></a>


				</div>


				<div class="container mt-3">

					<br>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Email</th>
								<th>Tipo</th>
								<th>Operadora</th>
								<th>Numero</th>
								<th>Accion</th>
							</tr>
						</thead>
						<tbody id="myTable">

							<c:forEach var="telf" items="${p1}">
								<tr>
									<td>${p2.correo}</td>
									<td>${telf.tipo}</td>
									<td>${telf.operadora}</td>
									<td>${telf.numero}
									</td>
									<td><a
										href="/ProyectoDAO/EditarContacto?id=${telf.telf_id}&idUser=${p2.cedula}"
										class="btn btn-warning">Editar</a> <a
										href="/ProyectoDAO/EliminarContacto?id=${telf.telf_id}&idUser=${p2.cedula}"
										class="btn btn-danger">Eliminar</a></td>
								</tr>

							</c:forEach>


						</tbody>
					</table>
				</div>

			</div>
		</section>

	</div>



<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="js/vendor/jquery-1.11.2.min.js"></script>

<script src="js/isotope.pkgd.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/appear.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/showHide.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/scrolling-nav.js"></script>
<script src="js/plugins.js"></script>
<!-- Google Map js -->
        <script src="https://maps.googleapis.com/maps/api/js"></script>
		<script>
			function initialize() {
			  var mapOptions = {
				zoom: 14,
				scrollwheel: false,
				center: new google.maps.LatLng(41.092586000000000000, -75.592688599999970000)
			  };
			  var map = new google.maps.Map(document.getElementById('googleMap'),
				  mapOptions);
			  var marker = new google.maps.Marker({
				position: map.getCenter(),
				animation:google.maps.Animation.BOUNCE,
				icon: 'img/map-marker.png',
				map: map
			  });
			}
			google.maps.event.addDomListener(window, 'load', initialize);
		</script>
<script src="js/main.js"></script>

<script src="showHide.js" type="text/javascript"></script>

<script type="text/javascript">

$(document).ready(function(){


   $('.show_hide').showHide({			 
		speed: 1000,  // speed you want the toggle to happen	
		easing: '',  // the animation effect you want. Remove this line if you dont want an effect and if you haven't included jQuery UI
		changeText: 1, // if you dont want the button text to change, set this to 0
		showText: 'View',// the button text to show when a div is closed
		hideText: 'Close' // the button text to show when a div is open
					 
	}); 


});

</script>
<script>
    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script>

<script>

  //Hide Overflow of Body on DOM Ready //
$(document).ready(function(){
    $("body").css("overflow", "hidden");
});

// Show Overflow of Body when Everything has Loaded 
$(window).load(function(){
    $("body").css("overflow", "visible");        
    var nice=$('html').niceScroll({
	cursorborder:"5",
	cursorcolor:"#00AFF0",
	cursorwidth:"3px",
	boxzoom:true, 
	autohidemode:true
	});

});
</script>

</body>
</html>
