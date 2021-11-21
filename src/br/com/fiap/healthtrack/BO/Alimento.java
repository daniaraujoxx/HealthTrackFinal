package br.com.fiap.healthtrack.BO;

import br.com.fiap.healthtrack.DAO.AlimentoDAO;

public class Alimento {
	
	private String nomeAlimento;
	private double caloriasAlimento;
	
	public String getNomeAlimento() {
		return nomeAlimento;
	}

	public void setNomeAlimento(String nomeAlimento) {
		this.nomeAlimento = nomeAlimento;
	}

	public double getCaloriasAlimento() {
		return caloriasAlimento;
	}

	public void setCaloriasAlimento(double caloriasAlimento) {
		this.caloriasAlimento = caloriasAlimento;
	}

	AlimentoDAO aDAO = new AlimentoDAO();
	

	
	public void insertAlimento() {
		aDAO.insert(this);
	}
	
	public void getAllAlimento() {
		System.out.println("\n======= Get All Alimento ======= ");
		System.out.println(aDAO.getAll());
		System.out.println(" ");
	}

	@Override
	public String toString() {
		return "["+nomeAlimento + " | " + caloriasAlimento + "/100g" + "]";
	}

	
	
	
}
