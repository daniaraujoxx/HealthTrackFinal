<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/add.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/addpeso.css">
<%@ include file="head.jsp"%>
<title>Health Track | Peso</title>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<main class="container d-flex justify-content-center" id="addform">
	
		<form class="addpeso" method="post" action="PesoController">
			<div id="addtitulo" class="mb-3 mt-2 text-center">
				<h1>Adicionar Peso</h1>
				<h2>Digite o peso atual</h2>
			</div>

			<div class="form-group mb-2">
				<div class="row d-flex justify-content-center">
					<div>
						<label for="data">Data Pesagem</label> <input class="form-control"
							id="data" type="date" max="9999-12-31" min="0001-01-01">
					</div>
					<div class="mt-2">
						<div class="col mt-2">
							<label for="quilogramas">Quilogramas</label> <input type="number" max="500" min="0" 
								class="form-control" name="txtNrPeso" required placeholder="Digite o peso">
						</div>
						<div class="col mt-3">
							<label for="gramas">Gramas</label> <input type="number" max="999"
								min="0" id="gramas" placeholder="500g"
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
				<a href="peso.jsp" class="btn btn-danger w-100">Cancelar</a>
			</div>
		</form>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>