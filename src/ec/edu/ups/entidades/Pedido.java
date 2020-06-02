package ec.edu.ups.entidades;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity

public class Pedido implements Serializable{

	private static final long serialVersionUID =1;
	@Id
	private int numero;
	 private String fechaFormatoJSP;
	 private String cliente;
	 private double total;
	 private String observaciones;
	 
	 @OneToMany
	 (cascade = CascadeType.ALL, mappedBy="pedido" )
		private List<Comida> telefonos = new ArrayList<Comida>();
	 
	 public Pedido() {
		 
	 }

	 
	public Pedido(int numero, String fechaFormatoJSP, String cliente, double total, String observaciones) {
		super();
		this.numero = numero;
		this.fechaFormatoJSP = fechaFormatoJSP;
		this.cliente = cliente;
		this.total = total;
		this.observaciones = observaciones;
		this.telefonos = telefonos;
	}


	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getFechaFormatoJSP() {
		return fechaFormatoJSP;
	}

	public void setFechaFormatoJSP(String fechaFormatoJSP) {
		this.fechaFormatoJSP = fechaFormatoJSP;
	}

	public String getCliente() {
		return cliente;
	}

	public void setCliente(String cliente) {
		this.cliente = cliente;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getObservaciones() {
		return observaciones;
	}

	public void setObservaciones(String observaciones) {
		this.observaciones = observaciones;
	}

	public List<Comida> getTelefonos() {
		return telefonos;
	}

	public void setTelefonos(List<Comida> telefonos) {
		this.telefonos = telefonos;
	}

	@Override
	public String toString() {
		return "Pedido [numero=" + numero + ", fechaFormatoJSP=" + fechaFormatoJSP + ", cliente=" + cliente + ", total="
				+ total + ", observaciones=" + observaciones + ", telefonos=" + telefonos + "]";
	}
	 
	
	 
	 
	 
	
}
