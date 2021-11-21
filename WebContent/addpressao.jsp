<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/menus.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/add.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/addpressao.css">
<%@ include file="head.jsp"%>
<title>Health Track | Pressão</title>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<main class="container d-flex justify-content-center" id="addform">
		<form class="addPressaoArterial" method="post"
			action="PressaoArterialController">
			<div id="addtitulo" class="mb-1 mt-2 text-center">
				<h1>Adicionar Pressão</h1>
				<h2>Digite a pressão atual</h2>
			</div>

			<div class="form-group mb-2">
				<div class="row d-flex justify-content-center">
					<div>
						<label for="data">Data Medição</label> <input class="form-control"
							id="data" type="date" max="9999-12-31" min="0001-01-01">
					</div>
					<div class="mt-2">
						<div class="col mt-2">
							<label for="sistolica">Pressão Sistólica</label> <input
								type="number" max="30" min="0" id="sistolica" placeholder="12"
								class="form-control" name="txtVlrSistolica" required
								placeholder="sistolica">
						</div>
						<div class="col mt-2">
							<label for="diastolica">Pressão Diastólica</label> <input
								type="number" max="30" min="0" id="diastolica" placeholder="8"
								class="form-control" name="txtVlrDiastolica" required
								placeholder="diastolica">
						</div>
					</div>
				</div>
			</div>

			<div class="form-group mt-3 mb-1 py-3">
				<input type="submit" class="btn btn-adicionar w-100 mb-0"
					value="Adicionar">

			</div>
			<div class="mt-0 mb-3">
				<a href="pressao.jsp" class="btn btn-danger w-100">Cancelar</a>
			</div>
		</form>
	</main>
	<%@include file="scripts.jsp"%>
</body>
</html>