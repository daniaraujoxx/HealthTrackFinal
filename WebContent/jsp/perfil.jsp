<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/add.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/perfil.css">
<title>Health Track | Perfil</title>
</head>
<body>
	<%@ include file="navbar.jsp"%>

	<main class="container d-flex justify-content-center" id="addform">
		<form class="row mx-auto" action="perfil.jsp">
			<div id="addtitulo" class="mb-3 mt-2 text-center">
				<h1>Perfil</h1>
			</div>

			<div class="form-group mb-2">
				<div class="row">
				
				
				<div class="mt-2">
						<label for="nome">Nome</label>
						<div class="d-flex">
							<input class="form-control px-2 rounded" id="nome" readonly
								placeholder="Nome do Usuário" type="text"> <i
								class="fas fa-edit icon"></i>
						</div>
					</div>
					
					<div class="mt-3">
						<label for="email">Email</label>
						<div class="d-flex">
							<input class="form-control px-2 rounded" id="email" readonly
								placeholder="email@email.com.br" type="email"> <i
								class="fas fa-edit icon"></i>
						</div>
					</div>
					
				
					<div class="mt-3">
						<label for="altura">Altura</label>
						<div class="d-flex">
							<input class="form-control px-2 rounded" id="altura" readonly
								placeholder="Altura em centímetros (cm)" type="number"> <i
								class="fas fa-edit icon"></i>
						</div>
					</div>
					
					
					<div class="mt-3">
						<label for="dtnasc">Data de Nascimento</label>
						<div class="d-flex">
							<input class="form-control px-2 rounded" id="dtnasc" readonly
								placeholder="dd/mm/aaaa" type="date"> <i
								class="fas fa-edit icon"></i>
						</div>
					</div>
				</div>
			</div>
			
			<div class="form-group mt-3 py-3">
				<input type="submit" class="btn btn-adicionar w-100 mb-0" value="Confirmar Alterações">
			</div>

			<div class="mb-1">
				<a href="#" class="btn btn-danger w-100">Apagar Conta</a>
			</div>
		</form>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>