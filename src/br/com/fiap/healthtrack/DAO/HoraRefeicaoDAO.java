package br.com.fiap.healthtrack.DAO;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import br.com.fiap.healthtrack.BO.HoraRefeicao;

public class HoraRefeicaoDAO implements IDataHandler<HoraRefeicao> {
	
	DAO dao = new DAO();
	
	@Override
	public List<HoraRefeicao> getAll() {
		List<HoraRefeicao> listaHorarios = new ArrayList<HoraRefeicao>();
		PreparedStatement stmt;
		try {
			stmt = dao.getConnection().prepareStatement("SELECT * FROM T_HORA_REFEICAO ORDER BY NM_HORARIO ASC");
			ResultSet resultset = null;
			resultset = dao.getData(stmt);
			while (resultset.next()) {
				HoraRefeicao horario = new HoraRefeicao();
				horario.setNomeHorario(resultset.getString("NM_HORARIO"));
				listaHorarios.add(horario);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return listaHorarios;
	}

	@Override
	public void insert(HoraRefeicao obj) {
		try {
			PreparedStatement stmt = dao.getConnection().prepareStatement("INSERT INTO T_HORA_REFEICAO(CD_HORARIO, NM_HORARIO)"
																		+ "VALUES (SEQ_HORARIO.NEXTVAL, ?)");
			stmt.setString(1, obj.getNomeHorario());
			
			dao.executeCommand(stmt);
			System.out.println("Horário Adicionado com sucesso, valor adicionados: "+obj.getNomeHorario());
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
}
