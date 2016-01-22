<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Q-Monitor</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>

	<link rel="stylesheet" href="css/skel.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-wide.css" />

</head>
<body>

	<!-- Header -->
	<div id="header">

		<!-- Logo -->

		<h1>
			<img src='imagens/Ico.jpg' class='icon major' id="icone" alt='icone'>
			<a href="index.html" id="logo">IFPB <em>Campus Campina	Grande</em></a>
		</h1>
		<nav id="nav">
			<ul>
				<li class="current"><a href="index.html">Home</a></li>
				<li><a href="#">Quadro de Monitores</a></li>
				<li><a href="#">Hor�rio de Monitores</a></li>
			</ul>
			<ul>
				<li>Bem-vindo, <%= session.getAttribute("nome") %></li>
			</ul>
		</nav>

		

		<!-- Banner -->
		<section id="banner">
			<header>
				<h2>
					Q-Monitor: <em>Sistema de Gerenciamento de Monitoria para
						Institutos Federais de Educa��o, Ci�ncia e Tecnologia da Para�ba
						(IFPB's).</em>
				</h2>
				<a href="#" class="button">Learn More</a>
			</header>
		</section>

	</div>


	<!-- Footer -->
	<div id="footer">

		<!-- Copyright -->
		<div class="copyright">
			<ul class="menu">
				<li>Desenvolvido por: La�s Lorrany e Myllena Alexandre</a></li>
				<li>Campina Grande 2015</li>
				<li>&copy; License GPL</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>

</body>
</html>