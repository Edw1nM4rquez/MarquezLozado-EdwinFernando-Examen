package ec.edu.ups.entidades;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Tarjeta implements Serializable{
	private static final long serialVersionUID =1;
	@Id
	private String numeroPedido;
	private String fechaPedido;
	private Cliente cliente;
	private double total;
	private String observaciones;
	
public Tarjeta() {
	
}

public Tarjeta(String numeroPedido, String fechaPedido, Cliente cliente, double total, String observaciones) {
	super();
	this.numeroPedido = numeroPedido;
	this.fechaPedido = fechaPedido;
	this.cliente = cliente;
	this.total = total;
	this.observaciones = observaciones;
}

public String getNumeroPedido() {
	return numeroPedido;
}

public void setNumeroPedido(String numeroPedido) {
	this.numeroPedido = numeroPedido;
}

public String getFechaPedido() {
	return fechaPedido;
}

public void setFechaPedido(String fechaPedido) {
	this.fechaPedido = fechaPedido;
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
	return "Tarjeta [numeroPedido=" + numeroPedido + ", fechaPedido=" + fechaPedido + ", cliente=" + cliente
			+ ", total=" + total + ", observaciones=" + observaciones + "]";
}


}
