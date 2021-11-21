<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/peso.css">
<%@ include file="head.jsp"%>
<title>Health Track | Peso</title>
</head>

<body>
	<%@ include file="navbar.jsp"%>
	<main>
		<div id="media" class="container-fluid">
			<div class="row">
				<h2 class="col pt-2 pb-1 my-auto text-center">
					<span id="text-variacao">Variação desde a última medição</span> <br>
					<span id="qtdvariacao">-5.8kg<i class="fas fa-apple-alt"></i></span>
				</h2>

			</div>
		</div>

			<c:forEach var="peso" items="${listPeso}">

			<ul class="list-group d-flex justify-content-between" action="PesoController" method="post">
				<li class="list-group-item d-flex justify-content-between"><span
					class="dtpeso">${peso.getPeso()}</span>
					 <span class="pesodia">${peso.getPeso()}
						</span> <span class="editremove"><i class="fas fa-edit"></i><i
						class="far fa-times-circle"></i></span></li>
			</ul>
			
			</c:forEach>
			

			<div class="d-flex justify-content-center">
				<a href="addpeso.jsp" id="btn-add" class="btn">Adicionar</a>
			</div>
	</main>
	<%@include file="scripts.jsp"%>
</body>
</html>