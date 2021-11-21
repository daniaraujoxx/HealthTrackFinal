<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/add.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/addhidro.css">
<%@include file="head.jsp"%>
<title>Health Track | Hidratação</title>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<main class="container d-flex justify-content-center" id="addform">
		<form class="row mx-auto" action="hidratacao.jsp">
			<div id="addtitulo" class="mb-3 mt-2 text-center">
				<h1>Adicionar Hidratação</h1>
				<h2>Digite a quantidade ingerida</h2>
			</div>

			<div class="form-group mb-2">
				<div class="row d-flex justify-content-center">
					<div>
						<label for="data">Data Hidratação</label> <input
							class="form-control" id="data" type="date" max="9999-12-31" min="0001-01-01">
					</div>
					<div class="mt-2">
						<div class="col mt-2">
							<label for="litros">Litro(s)</label> <input type="number"
								min="0" id="litros" placeholder="2L"
								class="form-control px-2 rounded">
						</div>
						<div class="col mt-3">
							<label for="mililitros">Mililitro(s)</label> <input type="number"
								max="999" min="0" id="mililitros" placeholder="500ml"
								class="form-control px-2 rounded">
						</div>
					</div>
				</div>
			</div>

			<div class="form-group mt-3 mb-1 py-3">
				<input type="submit" class="btn btn-primary w-100 mb-0"
					value="Adicionar">

			</div>
			<div class="mt-0 mb-3">
				<a href="hidratacao.jsp" class="btn btn-danger w-100">Cancelar</a>
			</div>
		</form>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>