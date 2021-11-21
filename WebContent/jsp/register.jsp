<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/forms.css">
<title>Health Track | Registrar</title>
</head>
<body>
	<main class="container d-flex justify-content-center"
		id="healthtrack-form">
		<form class="row mx-auto">
			<div class="mb-3">
				<h3>Registre-se no Health Track</h3>
				<h6>E tenha o controle de sua saúde</h6>
			</div>

			<div class="form-group mb-2">
				<label for="nome">Nome completo</label> <input type="text" id="nome"
					class="form-control  px-2 rounded" placeholder="Saudável da Silva">
			</div>

			<div class="form-group mb-2">
				<label for="email">E-mail</label> <input type="email" id="email"
					class="form-control px-2 rounded" placeholder="seuemail@email.com">
			</div>

			<div class="form-group mb-3">
				<label for="password">Senha</label> <input type="password"
					id="password" class="form-control px-2" placeholder="**********">
			</div>

			<div class="form-group mb-4">
				<input type="submit" class="btn btn-primary w-100 py-3"
					value="Registrar">
			</div>
			<div class="w-100 d-flex justify-content-center">
				<h6>
					Já possui uma conta? <a class="login" href="login.jsp">Faça
						login</a>
				</h6>

			</div>
		</form>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>