package br.com.fiap.healthtrack.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.healthtrack.BO.PressaoArterial;
import br.com.fiap.healthtrack.BO.TipoExercicio;
import br.com.fiap.healthtrack.DAO.PressaoArterialDAO;


@WebServlet("/PressaoArterialController")
public class PressaoArterialController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PressaoArterialDAO pressaoDAO;
       
  
    public PressaoArterialController() {
        super();
        this.pressaoDAO = new PressaoArterialDAO();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("listPressao", this.pressaoDAO.getAll());
		RequestDispatcher disp = request.getRequestDispatcher("pressao.jsp");
		disp.forward(request, response);	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pressaoSistolica = Integer.parseInt(request.getParameter("txtVlrSistolica"));
		int pressaoDiastolica = Integer.parseInt(request.getParameter("txtVlrDiastolica"));
		PressaoArterial pressao = new PressaoArterial();
		pressao.setPressaoSistolica(pressaoSistolica);
		pressao.setPressaoDiastolica(pressaoDiastolica);
		this.pressaoDAO.insert(pressao);

		response.sendRedirect("PressaoArterialController");
	}

}
