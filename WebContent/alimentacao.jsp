<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/alimentacao.css">
<title>Health Track | Alimenta��o</title>
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
						
							<li class="list-group-item d-flex justify-content-between">
							<span class="dtalimentacao">16/11/2021</span> 
							<span class="vlrsalimentacao">
							<i class="fas fa-apple-alt"></i> 600 cal 
							<i class="far fa-clock"></i> Lanche da Tarde
							</span>
							<span class="editremove">
							<i class="fas fa-edit"></i>
							<i class="far fa-times-circle"></i>
							</span>
							</li>
							
							<li class="list-group-item d-flex justify-content-between">
							<span class="dtalimentacao">16/11/2021</span> 
							<span class="vlrsalimentacao">
							<i class="fas fa-apple-alt"></i> 900 cal 
							<i class="far fa-clock"></i> Almo�o
							</span>
							<span class="editremove">
							<i class="fas fa-edit"></i>
							<i class="far fa-times-circle"></i>
							</span>
							</li>
							
						
							<li class="list-group-item d-flex justify-content-between">
							<span class="dtalimentacao">16/11/2021</span> 
							<span class="vlrsalimentacao">
							<i class="fas fa-apple-alt"></i> 300 cal 
							<i class="far fa-clock"></i> Caf� da Manh�
							</span>
							<span class="editremove">
							<i class="fas fa-edit"></i>
							<i class="far fa-times-circle"></i>
							</span>
							</li>
							
							
							

						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="d-flex justify-content-center">
			<a href="addalimentacao.jsp" id="btn-add" class="btn">Adicionar</a>
		</div>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>