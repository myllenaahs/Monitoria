<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import = "java.util.ArrayList" %>
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
			<a href="index.html" id="logo">IFPB <em>Campus Campina
					Grande</em></a>
			<div>Bem-vindo!</div>
		</h1>
		<nav id="nav">
		<ul>
			<li class="current"><a href="index.html">Home</a></li>
			<li><form action="quadroServlet" method="post">
					<input type="submit" value="Quadro de Monitores">
				</form></li>
			<li><a href="#">Horário de Monitores</a></li>
		</ul>
		</nav>

		<!-- Banner -->
		<section id="banner">


			<!-- <form action="procuraMonitor" method="get">
				<label>Disciplina do monitor: <input type='text'
					name='monitor'></input></label>
			</form>-->
			<table>
				<tr>
					<th colspan="2">Quadro de Monitores</th>
				</tr>
				<tr>
					<th>Nome</th>
					<th>Disciplina</th>
				</tr>
				<%
					ArrayList<ArrayList> quadro = (ArrayList) session
							.getAttribute("quadro");
					ArrayList<String> monitores = quadro.get(0);
					ArrayList<String> disciplinas = quadro.get(1);
	
					for (int i = 0; i < monitores.size(); i++) {
				%><tr>
					<td><%=monitores.get(i)%></td>
					<td><%=disciplinas.get(i)%></td>
				</tr>
				<%
					}
				%>
			</table>
			<header>
				<h2>
					Q-Monitor: <em>Sistema de Gerenciamento de Monitoria para
						Institutos Federais de Educação, Ciência e Tecnologia da Paraíba
						(IFPB's).</em>
				</h2>
				<a href="#" class="button">Learn More</a>
			</header>
		</section>

	</div>




	<!-- <table>
		<c:forEach var="monitores" items="quadro">
			<tr>
				<td>Segunda-feira</td>
				<td>Terça-feira</td>
				<td>Quarta-feira</td>
				<td>Quinta-feira</td>
				<td>Sexta-feira</td>
			</tr>
			
			<tr>07:00</tr>
			<tr>07:50</tr>
			<tr>08:40</tr>
			<tr>09:50</tr>			
			<tr>10:40</tr>
			
			</tr>
			11:30<tr>
			
			</tr>
			13:00<tr>
			
			</tr>
			13:50<tr>
			
			</tr>
			14:40<tr>
			
			</tr>
			15:50<tr>
			
			</tr>
			16:40<tr>
			
			</tr>
			</tr></c:forEach>
	</table>-->
	
	<!-- Footer -->
	<div id="footer">

		<!-- Copyright -->
		<div class="copyright">
			<ul class="menu">
				<li>Desenvolvido por: Laís Lorrany e Myllena Alexandre</a></li>
				<li>Campina Grande 2015</li>
				<li>&copy; License GPL</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>
	
</body>
</html>