<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="estilo_quadro.css">
<title>Monitoria</title>
</head>
<body>

	<h1>
		<img src='imagens/Ico.jpg' class='icon major' id="icone" alt='icone'>
		<a href="index.html" id="logo">IFPB <em>Campus Campina Grande</em></a>
	</h1>

	<h2>Quadro de Monitores</h2>


	<form action="procuraMonitor" method="get">
		<label>Disciplina do monitor: <input type='text'
			name='monitor'></input></label>
	</form>


	<table>
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
	</table>
</body>
</html>