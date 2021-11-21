package br.com.fiap.healthtrack.DAO;

import java.util.List;

public interface IDataHandler<T> {
	
	public List<?> getAll();
	
	public void insert(T obj);
	
}
