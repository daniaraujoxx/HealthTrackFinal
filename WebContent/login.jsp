<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/forms.css">
<title>Health Track | Login</title>
</head>
<body>
	<main class="container d-flex justify-content-center"
		id="healthtrack-form">
		<form class="row mx-auto" action="dashboard.jsp">
			<div class="mb-3">
				<h3>É muito bom te rever aqui!</h3>
				<h6>Logue e mantenha o controle de sua saúde</h6>
			</div>

			<div class="form-group mb-2">
				<label for="email">E-mail</label> <input type="email" id="email"
					class="form-control px-2 rounded" placeholder="seuemail@email.com">
			</div>

			<div class="form-group">
				<label for="password">Senha</label> <input type="password"
					id="password" class="form-control px-2" placeholder="**********">
			</div>

			<h2 class="opcoes mb-3 col-6">
				<a href="#">Esqueceu sua senha?</a>
			</h2>
			<div class="form-group mb-4">
				<input type="submit" class="btn btn-primary w-100 py-3"
					value="Log In">
			</div>

			<div class="w-100 d-flex justify-content-center">

				<h6>
					Ainda não possui uma conta?&nbsp;<a href="register.jsp">Registre-se</a>
				</h6>
			</div>

			<div class="w-100 d-flex justify-content-center"></div>
		</form>
	</main>
		<%@include file="scripts.jsp" %>
</body>
</html>