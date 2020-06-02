package ec.edu.ups.dao;

import java.util.List;

import ec.edu.ups.entidades.Pedido;



public interface GenericDAO<T ,ID> {

		public void createTable();

		public void create(T entity);

		public T read(ID id);

		public void update(T entity);

		public void delete(T entity);

		public List<T> find();

				
		public List<Pedido> buscarNumTarjeta(String cedula);

		public List<Pedido> buscarNumComida(String correo);

		

		void deleteByID(ID id);

		List<T> findAll();

		List<T> find(String[] attributes, String[] values, String order, int index, int size);

		public T buscar(String[] attributes, String[] values);

		void createTable(T entity);
		
}
