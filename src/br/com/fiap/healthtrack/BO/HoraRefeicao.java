package br.com.fiap.healthtrack.BO;
import br.com.fiap.healthtrack.DAO.HoraRefeicaoDAO;

public class HoraRefeicao {
	
	private String nomeHorario;
	
	HoraRefeicaoDAO hrDAO = new HoraRefeicaoDAO();
	
	public String getNomeHorario() {
		return nomeHorario;
	}

	public void setNomeHorario(String nomeHorario) {
		this.nomeHorario = nomeHorario;
	}

	public void insertHorarioRefeicao() {
		hrDAO.insert(this);
	}
	
	public void getAllHorarioRefeicao() {
		System.out.println("\n======= Get All Horários de Refeição ======= ");
		System.out.println(hrDAO.getAll());
		System.out.println(" ");
	}

	@Override
	public String toString() {
		return "HoraRefeicao [" + nomeHorario + "]";
	}


	
	
	
}
