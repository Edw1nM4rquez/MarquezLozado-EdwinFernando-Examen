package ec.edu.ups.jpa;

import ec.edu.ups.dao.TarjetaDAO;
import ec.edu.ups.entidades.Tarjeta;

public class JPATarjetaDAO extends JPAGenericDAO<Tarjeta, String> implements TarjetaDAO{

	public  JPATarjetaDAO() {
		super(Tarjeta.class);
	}
}
