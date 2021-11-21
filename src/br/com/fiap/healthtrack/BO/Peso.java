package br.com.fiap.healthtrack.BO;

import br.com.fiap.healthtrack.DAO.PesoDAO;

public class Peso {
	
	private double peso;
	
	PesoDAO pDAO = new PesoDAO();
	
	public double getPeso() {
		return peso;
	}
	
	
	
	public void setPeso(double peso) {
		this.peso = peso;
	}
	
	public void insertPeso() {
		pDAO.insert(this);
	}
	
	public void getAllPeso() {
		System.out.println("\n======= Get All Peso ======= ");
		System.out.println(pDAO.getAll());
		System.out.println(" ");
	}

	@Override
	public String toString() {
		return "[Peso = " + peso + "]";
	}
	
	
	
}
