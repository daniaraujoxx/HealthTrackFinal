package br.com.fiap.healthtrack.BO;

import br.com.fiap.healthtrack.DAO.RecipienteHidratacaoDAO;

public class RecipienteHidratacao {
	
	private String nomeRecipiente;
	private double volumeRecipiente;
	

	public String getNomeRecipiente() {
		return nomeRecipiente;
	}

	public void setNomeRecipiente(String nomeRecipiente) {
		this.nomeRecipiente = nomeRecipiente;
	}

	public double getVolumeRecipiente() {
		return volumeRecipiente;
	}

	public void setVolumeRecipiente(double volumeRecipiente) {
		this.volumeRecipiente = volumeRecipiente;
	}

	RecipienteHidratacaoDAO rDAO = new RecipienteHidratacaoDAO();
	

	
	public void insertRecipiente() {
		rDAO.insert(this);
	}
	
	public void getAllRecipiente() {
		System.out.println("\n======= Get All Recipiente Hidratação ======= ");
		System.out.println(rDAO.getAll());
		System.out.println(" ");
	}

	@Override
	public String toString() {
		return "["+nomeRecipiente +" | " +  volumeRecipiente + "ml" + "]";
				
	}


	
	
	
}
