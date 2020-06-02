package ec.edu.ups.jpa;

import ec.edu.ups.dao.ClienteDAO;
import ec.edu.ups.entidades.Cliente;
import javax.persistence.Persistence;

public class JPAClienteDAO extends JPAGenericDAO<Cliente, String> implements ClienteDAO{

	public JPAClienteDAO() {
		super (Cliente.class);
	}
}
