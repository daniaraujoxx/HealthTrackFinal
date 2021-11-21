package br.com.fiap.healthtrack.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAO {
	
	private Connection connection;
	
	public DAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public void openConnection() {
		try {
			this.connection = DriverManager.getConnection(
					"jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL","RMXXXXXX",
					"XXXXXXX");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public Connection getConnection() {
		openConnection();
		return this.connection;
	}
	
	
	public void executeCommand(PreparedStatement stmt) {
		try {
			stmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		}

	}
	
	public ResultSet getData(PreparedStatement stmt) {
		ResultSet resultset = null;
		try {
			resultset = stmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return resultset;
	}
	
}
