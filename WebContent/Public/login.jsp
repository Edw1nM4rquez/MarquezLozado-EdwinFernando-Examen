<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
  <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Inicio</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-touch-icon.png">
	<!--[if lt IE 9]> <script src="js/html5shiv.js"></script> 
	<script src="js/respond.min.js"></script> <![endif]--> 		
        <!-- Place favicon.ico in the root directory -->
		<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="/ProjectJPAUPS/Public/css/normalize.css">
        <link rel="stylesheet" href="/ProjectJPAUPS/Public/css/main.css">
        <link rel="stylesheet" href="/ProjectJPAUPS/Public/css/bootstrap.min.css">
        <link rel="stylesheet" href="/ProjectJPAUPS/Public/css/font-awesome.min.css">
        <link rel="stylesheet" href="/ProjectJPAUPS/Public/css/owl.carousel.css">
        <link rel="stylesheet" href="/ProjectJPAUPS/Public/css/responsive.css">
        <link rel="stylesheet" href="/ProjectJPAUPS/Public/css/style.css">
<link rel="stylesheet" href="/ProjectJPAUPS/config/styles/stylesLogin.css" type="text/css">
</head>
<body>
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
					<a href="index.html"><img src="/ProjectJPAUPS/Public/img/logo.png" alt=""/></a>
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
								<li><a class="page-scroll" href="/ProjectJPAUPS/Public/index.html">Inicio</a></li> 
							
							
								<li><a class="page-scroll" href="/ProjectJPAUPS/Public/login.jsp">Inicar Sesion</a></li>
								<li><a class="page-scroll" href="/ProjectJPAUPS/Public/crear_usuario.jsp">Registrarce</a></li>
								
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


<div class="cuerpo">

			<div class="contenido">
				<form action="/ProjectJPAUPS/iniciarSesion" method="POST">

					<div class="imgcontainer">
						<img src="/ProjectJPAUPS/config/images/img_avatar2.png" alt="Avatar"
							class="avatar">
					</div>

					<div class="container">
						<label for="correo"><b>Correo : &#128231; &nbsp; &nbsp; &nbsp; &nbsp;</b></label> 
						<input type="text" placeholder="Ingrese Correo" name="correo" id="Correo" required >
						<br> 
						<label for="contraseña"><b>Contraseña : &#128172;</b></label> 
						<input type="password" placeholder="Ingrese Contraseña" name="contrasena" id="Contar" required>
						<br>
						<button type="submit" name="accion" value="Ingresar">Ingresar</button>

					</div>

					
				</form>
			</div>


		</div>
		

<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script src="/ProjectJPAUPS/Public/js/vendor/jquery-1.11.2.min.js"></script>

<script src="/ProjectJPAUPS/Public/js/isotope.pkgd.min.js"></script>
<script src="/ProjectJPAUPS/Public/js/bootstrap.min.js"></script>
<script src="/ProjectJPAUPS/Public/js/jquery-ui.js"></script>
<script src="/ProjectJPAUPS/Public/js/appear.js"></script>
<script src="/ProjectJPAUPS/Public/js/jquery.counterup.min.js"></script>
<script src="/ProjectJPAUPS/Public/js/waypoints.min.js"></script>
<script src="/ProjectJPAUPS/Public/js/owl.carousel.min.js"></script>
<script src="/ProjectJPAUPS/Public/js/showHide.js"></script>
<script src="/ProjectJPAUPS/Public/js/jquery.nicescroll.min.js"></script>
<script src="/ProjectJPAUPS/Public/js/jquery.easing.min.js"></script>
<script src="/ProjectJPAUPS/Public/js/scrolling-nav.js"></script>
<script src="/ProjectJPAUPS/Public/js/plugins.js"></script>
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
<script src="/ProjectJPAUPS/Public/js/main.js"></script>

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