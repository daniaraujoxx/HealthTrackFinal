package br.com.fiap.healthtrack.BO;
import br.com.fiap.healthtrack.DAO.PressaoArterialDAO;

public class PressaoArterial {
	
	private int pressaoSistolica;
	private int pressaoDiastolica;
	
	PressaoArterialDAO prDAO = new PressaoArterialDAO();
	
	public int getPressaoSistolica() {
		return pressaoSistolica;
	}


	public void setPressaoSistolica(int pressaoSistolica) {
		this.pressaoSistolica = pressaoSistolica;
	}


	public int getPressaoDiastolica() {
		return pressaoDiastolica;
	}


	public void setPressaoDiastolica(int pressaoDiastolica) {
		this.pressaoDiastolica = pressaoDiastolica;
	}

	public void insertPressaoArterial() {
		prDAO.insert(this);
	}
	
	public void getAllPressaoArterial() {
		System.out.println("\n======= Get All Pressao Arterial ======= ");
		System.out.println(prDAO.getAll());
		System.out.println(" ");
	}


	@Override
	public String toString() {
		return "[PressaoArterial sistolica = "  + pressaoSistolica + ", diastolica = " + pressaoDiastolica
				+ "]";
	}
	


	
	
	
}
