package br.com.fiap.healthtrack.BO;
import br.com.fiap.healthtrack.DAO.TipoExercicioDAO;

public class TipoExercicio {
	
	private String tipoExercicio;
	
	TipoExercicioDAO tipoDAO = new TipoExercicioDAO();
	
	
	public String getTipoExercicio() {
		return tipoExercicio;
	}

	public void setTipoExercicio(String tipoExercicio) {
		this.tipoExercicio = tipoExercicio;
	}

	public void insertTipoExercicio() {
		tipoDAO.insert(this);
	}
	
	public void getAllTipoExercicio() {
		System.out.println("\n======= Get All Tipo Exercicio ======= ");
		System.out.println(tipoDAO.getAll());
		System.out.println(" ");
	}


	@Override
	public String toString() {
		return "[tipoExercicio = " + tipoExercicio + "]";
	}


	


	
	
	
}
