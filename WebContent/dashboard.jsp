<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/dashboard.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/menus.css">
<%@ include file="head.jsp"%>
<title>Health Track - Dashboard</title>
</head>
<body>

	<%@ include file="navbar.jsp"%>

	<main onclick="closeSideMenu();">
		<div id="recepcao" class="text-center mt-3">
			<h1>Olá, usuário!</h1>
			<h2>resumo de seu progresso</h2>
		</div>
		<div class="container mt-3">

			<div class="card-group">
			
				<!-- Card Peso -->
				<div class="card">
					<div class="card-header card-peso">
						<h5 class="card-title text-center my-auto">Peso</h5>
					</div>
					<div class="card-body">

						<p class="card-text mb-0 mt-2 text-center topico">Peso Atual</p>
						<p class="text-center">70kg</p>
						
						<p class="card-text text-center mb-0 topico">Variação desde a
							última medição</p>
						<p class="text-center">-5.8kg</p>
						
						<p class="card-text text-center mb-0 topico">IMC atual</p>
						<p class="text-center">Peso Normal</p>
						
					</div>
					<div class="card-footer">
						<a href="PesoController" id="btn-peso" class="btn w-100"> <i
							class="fas fa-weight"></i>
						</a>
					</div>
				</div>
				
				<!-- Card Alimentação -->
				<div class="card">
					<div class="card-header card-alimentacao">
						<h5 class="card-title text-center my-auto">Alimentação</h5>
					</div>
					<div class="card-body">

						<p class="card-text mb-0 mt-2 text-center topico">
						Ingestão média de calorias</p>
						<p class="text-center">2000 cal</p>
					
						<p class="card-text text-center mb-0 mt-0 topico">Refeição mais ingerida</p>
						
						<p class="text-center">Lanche da Tarde</p>
						
					</div>
					<div class="card-footer">
						<a href="AlimentacaoController" id="btn-alimentacao" class="btn w-100">
							<i class="fas fa-utensils"></i>
						</a>
					</div>
				</div>
				
				<!-- Card Pressão -->
				<div class="card">
					<div class="card-header card-pressao">
						<h5 class="card-title text-center my-auto">Pressão</h5>
					</div>
					<div class="card-body">

						<p class="card-text mb-0 mt-2 text-center topico">Média Pressão Sistólica</p>
						<p class="text-center">12</p>
						
						<p class="card-text text-center mb-0 topico">Média Pressão Diastólica</p>
						<p class="text-center">8</p>
						
						<p class="card-text text-center mb-0 topico">Média Batimentos</p>
						<p class="text-center">80 BPM</p>
					</div>
					<div class="card-footer">
						<a href="pressao.jsp" id="btn-pressao" class="btn w-100"> <i class="fas fa-heartbeat"></i>
						</a>
					</div>
				</div>
				
				
				<!-- Card Hidratação -->
				<div class="card">
					<div class="card-header card-hidratacao">
						<h5 class="card-title text-center my-auto">Hidratação</h5>
					</div>
					<div class="card-body">

						<p class="card-text mb-0 mt-2 text-center topico">Média diária	</p>
						
						<p class="text-center">2 Litros e 292 ML</p>
					
						<p class="card-text text-center mb-0 topico">Variação do
							recomendado diário</p>
						<p class="text-center">-158ml</p>
						
					</div>
					<div class="card-footer">
						<a href="hidratacao.jsp" id="btn-hidratacao" class="btn  w-100">
							<i class="fas fa-tint"></i>
						</a>
					</div>
				</div>
				
				<!-- Card Exercícios -->
				<div class="card">
					<div class="card-header card-atividade">
						<h5 class="card-title text-center my-auto">Atividade Física</h5>
					</div>
					<div class="card-body">

						<p class="card-text mb-0 mt-2 text-center topico">Sessões
							realizadas no mês	</p>
						<p class="text-center">3</p>
					
						<p class="card-text text-center mb-0 mt-0 topico">Tempo gasto	</p>
						
						<p class="text-center">4h 21min</p>
					
						<p class="card-text text-center mb-0  mt-0 topico">Distância
							percorrida</p>
						<p class="text-center">22km</p>
						
					</div>
					<div class="card-footer">
						<a href="atividadefisica.jsp" id="btn-atividade" class="btn w-100">
							<i class="fas fa-dumbbell"></i>
						</a>
					</div>
				</div>
				
			</div>
		</div>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>