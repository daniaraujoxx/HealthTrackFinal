package br.com.fiap.healthtrack.DAO;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import br.com.fiap.healthtrack.BO.Alimento;

public class AlimentoDAO implements IDataHandler<Alimento> {
	
	DAO dao = new DAO();
	
	@Override
	public List<Alimento> getAll() {
		List<Alimento> listaAlimentos = new ArrayList<Alimento>();
		PreparedStatement stmt;
		try {
			stmt = dao.getConnection().prepareStatement("SELECT * FROM T_ALIMENTO ORDER BY NM_ALIMENTO ASC");
			ResultSet resultset = null;
			resultset = dao.getData(stmt);
			while (resultset.next()) {
				Alimento alimento = new Alimento();
				alimento.setNomeAlimento(resultset.getString("NM_ALIMENTO"));
				alimento.setCaloriasAlimento(resultset.getDouble("VL_CALS_ALMTO"));
				listaAlimentos.add(alimento);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listaAlimentos;
	}

	@Override
	public void insert(Alimento obj) {
		try {
			PreparedStatement stmt = dao.getConnection().prepareStatement("INSERT INTO T_ALIMENTO(CD_ALIMENTO, NM_ALIMENTO, VL_CALS_ALMTO)"
																		+ "VALUES (SEQ_ALIMENTO.NEXTVAL, ?, ?)");
			stmt.setString(1, obj.getNomeAlimento());
			stmt.setDouble(2, obj.getCaloriasAlimento());
			
			dao.executeCommand(stmt);
			System.out.println("Alimento Adicionado com sucesso, valores adicionados: "+ obj.getNomeAlimento() + " " + obj.getCaloriasAlimento() + " cals/100g");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
}
