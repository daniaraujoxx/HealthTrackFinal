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
			<h1>Ol�, usu�rio!</h1>
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
						
						<p class="card-text text-center mb-0 topico">Varia��o desde a
							�ltima medi��o</p>
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
				
				<!-- Card Alimenta��o -->
				<div class="card">
					<div class="card-header card-alimentacao">
						<h5 class="card-title text-center my-auto">Alimenta��o</h5>
					</div>
					<div class="card-body">

						<p class="card-text mb-0 mt-2 text-center topico">
						Ingest�o m�dia de calorias</p>
						<p class="text-center">2000 cal</p>
					
						<p class="card-text text-center mb-0 mt-0 topico">Refei��o mais ingerida</p>
						
						<p class="text-center">Lanche da Tarde</p>
						
					</div>
					<div class="card-footer">
						<a href="AlimentacaoController" id="btn-alimentacao" class="btn w-100">
							<i class="fas fa-utensils"></i>
						</a>
					</div>
				</div>
				
				<!-- Card Press�o -->
				<div class="card">
					<div class="card-header card-pressao">
						<h5 class="card-title text-center my-auto">Press�o</h5>
					</div>
					<div class="card-body">

						<p class="card-text mb-0 mt-2 text-center topico">M�dia Press�o Sist�lica</p>
						<p class="text-center">12</p>
						
						<p class="card-text text-center mb-0 topico">M�dia Press�o Diast�lica</p>
						<p class="text-center">8</p>
						
						<p class="card-text text-center mb-0 topico">M�dia Batimentos</p>
						<p class="text-center">80 BPM</p>
					</div>
					<div class="card-footer">
						<a href="PressaoArterialController" id="btn-pressao" class="btn w-100"> <i class="fas fa-heartbeat"></i>
						</a>
					</div>
				</div>
				
				
		
				
				<!-- Card Exerc�cios -->
				<div class="card">
					<div class="card-header card-atividade">
						<h5 class="card-title text-center my-auto">Atividade F�sica</h5>
					</div>
					<div class="card-body">

						<p class="card-text mb-0 mt-2 text-center topico">Sess�es
							realizadas no m�s	</p>
						<p class="text-center">3</p>
					
						<p class="card-text text-center mb-0 mt-0 topico">Tempo gasto	</p>
						
						<p class="text-center">4h 21min</p>
					
						<p class="card-text text-center mb-0  mt-0 topico">Dist�ncia
							percorrida</p>
						<p class="text-center">22km</p>
						
					</div>
					<div class="card-footer">
						<a href="AtividadeController" id="btn-atividade" class="btn w-100">
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