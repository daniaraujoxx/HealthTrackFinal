<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/menus.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/add.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/addatividade.css">
<%@include file="head.jsp"%>
<title>Health Track | Exercícios</title>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<main class="container d-flex justify-content-center" id="addform">
		<form class="addExercicio" method="post" action="AtividadeController">
			<div id="addtitulo" class="mb-3 mt-2 text-center">
				<h1>Adicionar Atividade</h1>
			</div>

			<div class="form-group mb-2">
				<div class="row d-flex justify-content-center">
					<div>
						<label for="data">Data Atividade</label> <input
							class="form-control" id="data" type="date" max="9999-12-31"
							min="0001-01-01">
					</div>
					<div class="mt-2">
						<label for="horas">Nome Atividade</label> <input type="text"
							id="horas" max="24" min="0" id="nome"
							class="form-control" name="txtNome" required placeholder="Digite a atividade">
					</div>

				</div>
			</div>

			<div class="form-group mt-3 mb-1 py-3">
				<input type="submit" id="btn-add" class="btn w-100 mb-0"
					value="Adicionar">

			</div>
			<div class="mt-0 mb-3">
				<a href="atividadefisica.jsp" class="btn btn-danger w-100">Cancelar</a>
			</div>
		</form>
	</main>
	<%@include file="scripts.jsp"%>
</body>
</html>