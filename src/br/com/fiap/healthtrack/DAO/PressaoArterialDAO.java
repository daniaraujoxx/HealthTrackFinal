package br.com.fiap.healthtrack.DAO;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import br.com.fiap.healthtrack.BO.PressaoArterial;

public class PressaoArterialDAO implements IDataHandler<PressaoArterial>{
	
	DAO dao = new DAO();
	
	
	@Override
	public List<PressaoArterial> getAll() {
		List<PressaoArterial> listaPressao = new ArrayList<PressaoArterial>();
		PreparedStatement stmt;
		
		try {
			stmt = dao.getConnection().prepareStatement("SELECT * FROM T_PR_ARTERIAL");
			ResultSet resultset = dao.getData(stmt);
			while(resultset.next()) {
				PressaoArterial pressao = new PressaoArterial();
				pressao.setPressaoDiastolica(resultset.getInt("NR_PR_DIAST"));
				pressao.setPressaoSistolica(resultset.getInt("NR_PR_SIS"));
				listaPressao.add(pressao);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaPressao;
	}

	@Override
	public void insert(PressaoArterial obj) {
		try {
			java.sql.Date data = new java.sql.Date(new java.util.Date().getTime());
			PreparedStatement stmt = dao.getConnection().prepareStatement("INSERT INTO T_PR_ARTERIAL(CD_PR_ART, DT_MEDICAO, NR_PR_SIS, NR_PR_DIAST)"
																		 + " VALUES (SEQ_PR_ARTERIAL.NEXTVAL, ?, ?, ?)");
			
			int pressaoSistolica = obj.getPressaoSistolica();
			int pressaoDiastolica = obj.getPressaoDiastolica();
			
			stmt.setDate(1, data);
			stmt.setInt(2, pressaoSistolica);
			stmt.setInt(3, pressaoDiastolica);
			
			dao.executeCommand(stmt);
			System.out.println("Pressao Arterial adicionada com sucesso, valor adicionado: " + pressaoSistolica + "/" + pressaoDiastolica);
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

}
