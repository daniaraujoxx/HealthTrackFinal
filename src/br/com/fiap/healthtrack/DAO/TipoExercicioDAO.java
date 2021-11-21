package br.com.fiap.healthtrack.DAO;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

import br.com.fiap.healthtrack.BO.TipoExercicio;

public class TipoExercicioDAO implements IDataHandler<TipoExercicio>{
	
	DAO dao = new DAO();
	
	
	@Override
	public List<TipoExercicio> getAll() {
		List<TipoExercicio> ListaTiposExercicio = new ArrayList<TipoExercicio>();
		PreparedStatement stmt;
		
		try {
			stmt = dao.getConnection().prepareStatement("SELECT * FROM T_TIPO_EXER");
			ResultSet resultset = dao.getData(stmt);
			while(resultset.next()) {
				TipoExercicio tipo = new TipoExercicio();
				tipo.setTipoExercicio(resultset.getString("NM_TIPO_EXE"));
				ListaTiposExercicio.add(tipo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ListaTiposExercicio;
	}

	@Override
	public void insert(TipoExercicio obj) {
		try {
			PreparedStatement stmt = dao.getConnection().prepareStatement("INSERT INTO T_TIPO_EXER(CD_TIPO_EXE, NM_TIPO_EXE)"
																		 + " VALUES (SEQ_TIPO_EXERCICIO.NEXTVAL, ?)");
			
		
			stmt.setString(1, obj.getTipoExercicio());
			
			dao.executeCommand(stmt);
			System.out.println("Tipo de Exercicio adicionado com sucesso, tipo adicionado: " +  obj.getTipoExercicio());
			
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
	}

}
