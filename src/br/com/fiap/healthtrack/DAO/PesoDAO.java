package br.com.fiap.healthtrack.DAO;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import br.com.fiap.healthtrack.BO.Peso;

public class PesoDAO implements IDataHandler<Peso> {
	
	DAO dao = new DAO();
	
	@Override
	public List<Peso> getAll() {
		List<Peso> listaPesos = new ArrayList<Peso>();
		PreparedStatement stmt;
		try {
			stmt = dao.getConnection().prepareStatement("SELECT * FROM T_PESO ORDER BY NR_PESO DESC");
			ResultSet resultset = null;
			resultset = dao.getData(stmt);
			while (resultset.next()) {
				Peso peso = new Peso();
				peso.setPeso(resultset.getDouble("NR_PESO"));
				listaPesos.add(peso);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listaPesos;
	}

	@Override
	public void insert(Peso obj) {
		try {
			java.sql.Date data = new java.sql.Date(new java.util.Date().getTime());
			PreparedStatement stmt = dao.getConnection().prepareStatement("INSERT INTO T_PESO(CD_PESO, DT_PESAGEM, NR_PESO)"
																		+ "VALUES (SEQ_PESO.NEXTVAL, ?, ?)");
			stmt.setDate(1, data);
			stmt.setDouble(2, obj.getPeso());
			
			dao.executeCommand(stmt);
			System.out.println("Peso Adicionado com sucesso, valor adicionado: " + obj.getPeso());
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
}
