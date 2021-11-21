package br.com.fiap.healthtrack.DAO;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import br.com.fiap.healthtrack.BO.RecipienteHidratacao;

public class RecipienteHidratacaoDAO implements IDataHandler<RecipienteHidratacao> {
	
	DAO dao = new DAO();
	
	@Override
	public List<RecipienteHidratacao> getAll() {
		List<RecipienteHidratacao> listaRecipientes = new ArrayList<RecipienteHidratacao>();
		PreparedStatement stmt;
		try {
			stmt = dao.getConnection().prepareStatement("SELECT * FROM T_RECIP_HIDRA ORDER BY NR_VLM_RECIP DESC");
			ResultSet resultset = null;
			resultset = dao.getData(stmt);
			while (resultset.next()) {
				RecipienteHidratacao recipiente = new RecipienteHidratacao();
				recipiente.setNomeRecipiente(resultset.getString("NM_RECIPIENTE"));
				recipiente.setVolumeRecipiente(resultset.getDouble("NR_VLM_RECIP"));
				listaRecipientes.add(recipiente);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listaRecipientes;
	}

	@Override
	public void insert(RecipienteHidratacao obj) {
		try {
			PreparedStatement stmt = dao.getConnection().prepareStatement("INSERT INTO T_RECIP_HIDRA(CD_RECIPIENTE, NM_RECIPIENTE, NR_VLM_RECIP)"
																		+ "VALUES (SEQ_RECIPIENTE.NEXTVAL, ?, ?)");
			stmt.setString(1, obj.getNomeRecipiente());
			stmt.setDouble(2, obj.getVolumeRecipiente());
			
			dao.executeCommand(stmt);
			System.out.println("Recipiente Adicionado com sucesso, valores adicionados: "+obj.getNomeRecipiente() + " | " + obj.getVolumeRecipiente() + "ml");
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
}
