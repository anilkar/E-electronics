<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="/WEB-INF/view/header.jsp" %>
<!DOCTYPE html>
<html>
<head>

</head>
	
<body>
<!-- header -->

<!-- //header -->
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="<c:url value="/"/>">Home</a><span>|</span></li>
				<li>Sign In & Sign Up</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">
		<div class="w3l_banner_nav_left">
		<nav class="navbar nav_bottom">
			 <!-- Brand and toggle get grouped for better mobile display -->
			  <div class="navbar-header nav_2">
				  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
			   </div> 
			   <!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
					<ul class="nav navbar-nav nav_1">
						<li><a href="products.html">Branded Foods</a></li>
						<li><a href="household.html">Households</a></li>
						<li class="dropdown mega-dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Veggies & Fruits<span class="caret"></span></a>				
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>	
										<li><a href="vegetables.html">Vegetables</a></li>
										<li><a href="vegetables.html">Fruits</a></li>
									</ul>
								</div>                  
							</div>				
						</li>
						<li><a href="kitchen.html">Kitchen</a></li>
						<li><a href="short-codes.html">Short Codes</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Beverages<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="drinks.html">Soft Drinks</a></li>
										<li><a href="drinks.html">Juices</a></li>
									</ul>
								</div>                  
							</div>	
						</li>
						<li><a href="pet.html">Pet Food</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Frozen Foods<span class="caret"></span></a>
							<div class="dropdown-menu mega-dropdown-menu w3ls_vegetables_menu">
								<div class="w3ls_vegetables">
									<ul>
										<li><a href="frozen.html">Frozen Snacks</a></li>
										<li><a href="frozen.html">Frozen Nonveg</a></li>
									</ul>
								</div>                  
							</div>	
						</li>
						<li><a href="bread.html">Bread & Bakery</a></li>
					</ul>
				 </div><!-- /.navbar-collapse -->
			</nav>
		</div>
		<div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign In & Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  <!-- <div class="form">
					<h2>Login to your account</h2>
					<form action="#" method="post">
					  <input type="text" name="Username" placeholder="Username" required=" ">
					  <input type="password" name="Password" placeholder="Password" required=" ">
					  <input type="submit" value="Login">
					</form>
				  </div> -->
				  <div class="form">
					<h2>Create an account</h2>
					<form action="#" method="post">
					  <input type="text" name="Username" placeholder="Username" required=" ">
					  <input type="password" name="Password" placeholder="Password" required=" ">
					  <input type="email" name="Email" placeholder="Email Address" required=" ">
					  <input type="text" name="Phone" placeholder="Phone Number" required=" ">
					  <input type="submit" value="Register">
					</form>
				  </div>
				  <div class="cta"><a href="#">Forgot your password?</a></div>
				</div>
			</div>
			<script>
				$('.toggle').click(function(){
				  // Switches the Icon
				  $(this).children('i').toggleClass('fa-pencil');
				  // Switches the forms  
				  $('.form').animate({
					height: "toggle",
					'padding-top': 'toggle',
					'padding-bottom': 'toggle',
					opacity: "toggle"
				  }, "slow");
				});
			</script>
		</div>
<!-- //login -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
<!-- newsletter-top-serv-btm -->
	<div class="newsletter-top-serv-btm">
		<div class="container">
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i>
				</div>
				<h3>Nam libero tempore</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-bar-chart" aria-hidden="true"></i>
				</div>
				<h3>officiis debitis aut rerum</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-truck" aria-hidden="true"></i>
				</div>
				<h3>eveniet ut et voluptates</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter-top-serv-btm -->
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="w3agile_newsletter_left">
				<h3>sign up for our newsletter</h3>
			</div>
			<div class="w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="subscribe now">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
<!-- footer -->
	
	 <%@ include file="/WEB-INF/view/footer.jsp" %>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="resources/js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
</body>
</html>