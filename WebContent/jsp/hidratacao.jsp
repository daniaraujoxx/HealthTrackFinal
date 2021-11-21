<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/hidratacao.css">
<title>Health Track - Hidratação</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<div id="media" class="container-fluid">
		<div class="row">
			<select class="form-select">
				<option selected hidden>Selecione o ano desejado</option>
				<option value="2021">2021</option>
				<option value="2020">2020</option>
			</select>
			<h2 class="col pt-2 pb-1 my-auto text-center">
				<span id="text-media">Média de Consumo</span> <br>
				<span id="qtddia">2L 292ml / dia<i class="fas fa-tint"></i></span>
			</h2>

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
							class="dthidro">29/11/2021</span> <span class="aguadia"><i
								class="fas fa-tint"></i> 2L 320ml</span> <span class="editremove"><i
								class="fas fa-edit"></i><i class="far fa-times-circle"></i></span></li>
						<li class="list-group-item d-flex justify-content-between"><span
							class="dthidro">28/11/2021</span> <span class="aguadia"><i
								class="fas fa-tint"></i> 2L 468ml</span> <span class="editremove"><i
								class="fas fa-edit"></i><i class="far fa-times-circle"></i></span></li>
						<li class="list-group-item d-flex justify-content-between"><span
							class="dthidro">27/11/2021 </span> <span class="aguadia"><i
								class="fas fa-tint"></i> 2L 352ml</span> <span class="editremove"><i
								class="fas fa-edit"></i><i class="far fa-times-circle"></i></span></li>
						<li class="list-group-item d-flex justify-content-between"><span
							class="dthidro">26/11/2021</span> <span class="aguadia"><i
								class="fas fa-tint"></i> 2L 100ml</span> <span class="editremove"><i
								class="fas fa-edit"></i><i class="far fa-times-circle"></i></span></li>
						<li class="list-group-item d-flex justify-content-between"><span
							class="dthidro">25/11/2021</span> <span class="aguadia"><i
								class="fas fa-tint"></i> 2L 220ml</span> <span class="editremove"><i
								class="fas fa-edit"></i><i class="far fa-times-circle"></i></span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="d-flex justify-content-center">
		<a href="addhidro.jsp" id="btn-add" class="btn">Adicionar</a>
	</div>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>