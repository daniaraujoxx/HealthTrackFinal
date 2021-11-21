<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/menus.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/add.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/addalimentacao.css">
<%@ include file="head.jsp"%>
<title>Health Track | Alimenta��o</title>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<main class="container d-flex justify-content-center" id="addform">
		<form class="addAlimento" method="post" action="AlimentacaoController">
			<div id="addtitulo" class="mb-1 mt-2 text-center">
				<h1>Adicionar Alimenta��o</h1>
				<h2>Digite as informa��es da �ltima refei��o</h2>
			</div>

			<div class="form-group mb-2">
				<div class="row d-flex justify-content-center">
					<div>
						<label for="data">Data Refei��o</label> <input class="form-control"
							id="data" type="date"  max="9999-12-31" min="0001-01-01">
					</div>
					<div class="mt-2">
					<div class="col mt-2">
							<label for="horario">Hor�rio Refei��o</label>
							<select name="txtNome" class="form-select mb-3">
							 <option value="Cafe da Manha">Caf� da Manh�</option>
							 <option value="Lanche Matinal">Lanche Matinal</option>
							 <option value="Almoco">Almo�o</option>
							 <option value="Lanche da tarde">Lanche da Tarde</option>
							 <option value="Jantar">Jantar</option>
							 <option value="Lanche Noturno">Lanche Noturno</option>
							</select>
						</div>
						
						<div class="col mt-2">
							<label for="calorias">Quantidade de Calorias</label> <input type="number"
								min="0" id="calorias" placeholder="300 cal"
								class="form-control" name="txtCalorias" required placeholder="Digite as calorias">
						</div>
						

					</div>
				</div>
			</div>
			
			<div class="form-group mt-3 mb-1 py-3">
				<input type="submit" class="btn btn-adicionar w-100 mb-0"
					value="Adicionar">

					
			<div class="mt-0 mb-3">
				<a href="alimentacao.jsp" class="btn btn-danger w-100">Cancelar</a>
			</div>
		</form>
	</main>
	<%@include file="scripts.jsp" %>
</body>
</html>