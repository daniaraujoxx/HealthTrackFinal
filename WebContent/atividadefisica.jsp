<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/menus.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/atividadefisica.css">
<title>Health Track | Exercícios</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<main>



		<c:forEach var="atividade" items="${listAtividade}">

			<ul class="list-group d-flex justify-content-between"
				action="PesoController" method="post">
				<li class="list-group-item d-flex justify-content-between"><span
					class="dtpeso">${atividade.getTipoExercicio()}</span> <span
					class="editremove"><i class="fas fa-edit"></i><i
						class="far fa-times-circle"></i></span></li>
			</ul>

		</c:forEach>
		<div class="d-flex justify-content-center">
			<a href="addatividade.jsp" id="btn-add" class="btn">Adicionar</a>
		</div>
	</main>
	<%@include file="scripts.jsp"%>
</body>
</html>