<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/atividadefisica.css">
<title>Health Track | Exerc�cios</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<main>
		<div id="media" class="container-fluid">
			<div class="row">
				<select class="form-select">
					<option selected hidden>Selecione o ano desejado</option>
					<option value="2021">2021</option>
					<option value="2020">2020</option>
				</select>
				<div
					class="pt-2 d-flex justify-content-around pb-1 my-auto mx-auto text-center">
					<span class="info" id="tempo"><i class="far fa-clock"></i>
						4h 21min </span> <span class="info" id="distancia"><i
						class="fas fa-map-marker-alt"></i> 22 km </span> <span class="info"
						id="numeroex"><i class="fas fa-dumbbell"></i> 3 </span>
				</div>
			</div>

		</div>

		<div class="accordion mx-auto" id="meses">
			<div class="accordion-item">
				<h2 class="accordion-header" id="headingOne">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapseOne"
						aria-expanded="true" aria-controls="collapseOne">
						<span class="mes">Novembro</span>
					</button>
				</h2>
				<div id="collapseOne" class="accordion-collapse collapse"
					aria-labelledby="headingOne" data-bs-parent="#meses">
					<div class="accordion-body px-0 py-0">
						<ul class="list-group d-flex justify-content-between">
							<li class="list-group-item d-flex justify-content-between"><span
								class="dtexercicio">29/11/2021</span> <span class="tempogasto"><i
									class="far fa-clock"></i> 1h40 <i class="fas fa-map-marker-alt"></i>
									9 km</span> <span class="editremove"><i class="fas fa-edit"></i><i
									class="far fa-times-circle"></i></span></li>
							<li class="list-group-item d-flex justify-content-between"><span
								class="dtexercicio">27/11/2021</span> <span class="tempogasto"><i
									class="far fa-clock"></i> 1h25 <i class="fas fa-map-marker-alt"></i>
									7 km</span> <span class="editremove"><i class="fas fa-edit"></i><i
									class="far fa-times-circle"></i></span></li>
							<li class="list-group-item d-flex justify-content-between"><span
								class="dtexercicio">24/11/2021</span> <span class="tempogasto"><i
									class="far fa-clock"></i> 1h16 <i class="fas fa-map-marker-alt"></i>
									6 km</span> <span class="editremove"><i class="fas fa-edit"></i><i
									class="far fa-times-circle"></i></span></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="d-flex justify-content-center">
			<a href="addatividade.jsp" id="btn-add" class="btn">Adicionar</a>
		</div>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>