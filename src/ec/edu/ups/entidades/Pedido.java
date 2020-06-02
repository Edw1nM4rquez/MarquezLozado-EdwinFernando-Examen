package ec.edu.ups.entidades;

import java.io.Serializable;
import java.util.GregorianCalendar;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity

public class Pedido implements Serializable{

	private static final long serialVersionUID =1;
	@Id
	private int numero;
	 private String fechaFormatoJSP;
	 private Cliente cliente;
	 private double total;
	 private String observaciones;
	 
	 public Pedido() {
		 
	 }
	 
	public Pedido(int numero, String fechaFormatoJSP, Cliente cliente, double total, String observaciones) {
		super();
		this.numero = numero;
		this.fechaFormatoJSP = fechaFormatoJSP;
		this.cliente = cliente;
		this.total = total;
		this.observaciones = observaciones;
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
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
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

	@Override
	public String toString() {
		return "Pedido [numero=" + numero + ", fechaFormatoJSP=" + fechaFormatoJSP + ", total=" + total
				+ ", observaciones=" + observaciones + "]";
	}
	 
	 
	 
	
}
