<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index.css">
<title>Health Track</title>
</head>
<body>
	<nav class="navbar navbar-dark ">
		<button class="navbar-toggler" onclick="openSideMenu();" type="button">
			<i class="fas fa-bars"></i>
		</button>
		<a class="navbar-brand mx-auto" href="index.jsp">
			<h1 id="titulo" class="my-auto">Health Track</h1>
		</a>
	</nav>

	<div id="side-menu" class="side-nav mx-auto">
		<a href="#" class="btnn-close" onclick="closeSideMenu();">&times;</a>
		<a href="register.jsp" id="registrar" class="sidenav-item">Registrar</a>
		<a href="login.jsp" id="login" class="sidenav-item">Login</a>
	</div>

	<main onclick="closeSideMenu();" class="container">
		<div class="registrar w-100 mx-auto">
			<div class="row">
				<div
					class="col-md-12 d-flex justify-content-center align-items-center">
					<h1 class="text-center">Esteja no controle de sua saúde</h1>
				</div>
				<div class="col d-flex  justify-content-center align-items-center">
					<a class="btn text-center" href="register.jsp">Comece agora
						mesmo</a>
				</div>
			</div>
		</div>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>