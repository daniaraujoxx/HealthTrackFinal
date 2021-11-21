<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/add.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/addalimentacao.css">
<%@ include file="head.jsp"%>
<title>Health Track | Alimentação</title>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<main class="container d-flex justify-content-center" id="addform">
		<form class="row mx-auto" action="alimentacao.jsp">
			<div id="addtitulo" class="mb-1 mt-2 text-center">
				<h1>Adicionar Alimentação</h1>
				<h2>Digite as informações da última refeição</h2>
			</div>

			<div class="form-group mb-2">
				<div class="row d-flex justify-content-center">
					<div>
						<label for="data">Data Refeição</label> <input class="form-control"
							id="data" type="date"  max="9999-12-31" min="0001-01-01">
					</div>
					<div class="mt-2">
					<div class="col mt-2">
							<label for="horario">Horário Refeição</label>
							<select class="form-select mb-3">
							 <option value="Cafe da Manha">Café da Manhã</option>
							 <option value="Lanche Matinal">Lanche Matinal</option>
							 <option value="Almoco">Almoço</option>
							 <option value="Lanche da tarde">Lanche da Tarde</option>
							 <option value="Jantar">Jantar</option>
							 <option value="Lanche Noturno">Lanche Noturno</option>
							</select>
						</div>
						
						<div class="col mt-2">
							<label for="calorias">Quantidade de Calorias</label> <input type="number"
								min="0" id="calorias" placeholder="300 cal"
								class="form-control px-2 rounded">
						</div>
						

					</div>
				</div>
			</div>

			<div class="form-group mt-3 mb-1 py-3">
				<input type="submit" class="btn btn-adicionar w-100 mb-0"
					value="Adicionar">

			</div>
			<div class="mt-0 mb-3">
				<a href="alimentacao.jsp" class="btn btn-danger w-100">Cancelar</a>
			</div>
		</form>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>