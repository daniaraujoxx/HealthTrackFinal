package br.com.fiap.healthtrack.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.healthtrack.BO.Alimento;
import br.com.fiap.healthtrack.BO.Peso;
import br.com.fiap.healthtrack.DAO.AlimentoDAO;
import br.com.fiap.healthtrack.DAO.PesoDAO;

@WebServlet("/AlimentacaoController")
public class AlimentacaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	AlimentoDAO alimentoDao;

	public AlimentacaoController() {
		super();
		this.alimentoDao = new AlimentoDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("listAlimento", this.alimentoDao.getAll());
		RequestDispatcher disp = request.getRequestDispatcher("alimentacao.jsp");
		disp.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String alimento = request.getParameter("txtNome");
		double caloriasAlimento = Double.parseDouble(request.getParameter("txtCalorias"));

		Alimento alimentoModel = new Alimento();
		alimentoModel.setNomeAlimento(alimento);
		alimentoModel.setCaloriasAlimento(caloriasAlimento);
		this.alimentoDao.insert(alimentoModel);

		response.sendRedirect("AlimentacaoController");
	}

}
