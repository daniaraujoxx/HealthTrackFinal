package br.com.fiap.healthtrack.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.healthtrack.BO.Alimento;
import br.com.fiap.healthtrack.BO.TipoExercicio;
import br.com.fiap.healthtrack.DAO.AlimentoDAO;
import br.com.fiap.healthtrack.DAO.TipoExercicioDAO;

@WebServlet("/AtividadeController")
public class AtividadeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	TipoExercicioDAO exercicioDAO;

	public AtividadeController() {
		super();
		this.exercicioDAO = new TipoExercicioDAO();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tipoExercicio = request.getParameter("txtNome");

		TipoExercicio exercicio = new TipoExercicio();
		exercicio.setTipoExercicio(tipoExercicio);
		this.exercicioDAO.insert(exercicio);


		response.sendRedirect("AtividadeController");
	}
}
