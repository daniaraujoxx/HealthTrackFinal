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
	href="<%=request.getContextPath()%>/css/pressao.css">
<title>Health Track | Pressão</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<main>


		<c:forEach var="pressao" items="${listPressao}">

			<ul class="list-group d-flex justify-content-between"
				action="PressaoArterialController" method="post">
				<li class="list-group-item d-flex justify-content-between">
					<p>Pressão Sistólica</p> <span class="dtpeso">${pressao.getPressaoSistolica()}</span>
					<p>Pressão Diastólica</p> <span class="pesodia">${pressao.getPressaoDiastolica()}
				</span> <span class="editremove"><i class="fas fa-edit"></i><i
						class="far fa-times-circle"></i></span>
				</li>
			</ul>

		</c:forEach>
		<div class="d-flex justify-content-center">
			<a href="addpressao.jsp" id="btn-add" class="btn">Adicionar</a>
		</div>
	</main>
	<%@include file="scripts.jsp"%>
</body>
</html>