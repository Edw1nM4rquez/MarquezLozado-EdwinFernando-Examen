<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <title>Inicio</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" src="/MarquezLozado-EdwinFernando-Examen/config/JS/validaciones.js"></script>

        <meta http-equiv="x-ua-compatible" content="ie=edge">
       
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-touch-icon.png">
		<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="css/style.css">}
        
        <link rel="stylesheet" href="/MarquezLozado-EdwinFernando-Examen/config/styles/stylesCrUser.css">
</head>
<body>

<!-- start preloader -->
        <div id="loader-wrapper">
            <div class="logo"></div>
            <div id="loader">
            </div>
        </div>
       
		
		
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
								<li><a class="page-scroll" href="/MarquezLozado-EdwinFernando-Examen/Public/index.html">Inicio</a></li> 
								<li><a class="page-scroll" href="/MarquezLozado-EdwinFernando-Examen/Public/login.jsp">Inicar Sesion</a></li>
								<li><a class="page-scroll" href="/MarquezLozado-EdwinFernando-Examen/Public/crear_usuario.jsp">Registrarce</a></li>
								
							</ul>
						</div>		
						</nav>			
					</div>					
						
				</div>
			</div>	
		</div>	
	</div>	
</header>

	<div class="cuerpo1">
		<div class="contenedor1">
			<form action="/MarquezLozado-EdwinFernando-Examen/crearPedido" method="POST" onsubmit="return validarCamposObligatorios()" >
				<div class="container">
					<p>Llenar el siguiente formulario para realizar su pedido</p>
					<hr>

					<label for="cedula"><b>Numero : &nbsp;&nbsp; </b></label> 
					<input id="cedulaID" type="text" placeholder="Ingresar cedula" name="numero" onkeypress="ValidarNumeros(event, 'mensajeCedula', this)" required> <span id="mensajeCedula"></span> 
					<br>
					<label for="nombres"><b>Fecha :</b></label>
					<input id="nombresID" type="text" placeholder="Ingresar nombres" name="fecha" onkeypress="ValidarLetras(event, 'mensajeNombres', this)" required><span id="mensajeNombres"></span> 
					<br>
					<label for="apellidos"><b>Cliente :</b></label> 
					<input id="apellidosID" type="text" placeholder="Ingresar apellidos" name="cliente"  onkeypress="ValidarLetras(event, 'mensajeApellidos', this)" required><span id="mensajeApellidos"></span>
					<br>
					<label for="email"><b>Total : &nbsp;&nbsp;&nbsp;&nbsp;</b></label> 
					<input id="emailID" type="text" placeholder="Ingresar email" name="total" required><span id="mensajeCorreo"></span> 
					<br>
					<label for="psw"><b>Observaciones :</b></label> 
					<input id="passID" type="text" placeholder="Ingresar contraseña" name="ob" required> 
					<br>

					<button type="submit" class="registerbtn" name="registrarUsr"
						value="RegistrarUsr">Registrar</button>
				</div>

			</form>

		</div>

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