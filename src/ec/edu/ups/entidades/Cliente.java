package ec.edu.ups.entidades;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Cliente implements Serializable{
 private static final long  serialVersionUID =1;
 @Id
 private String cedula;
 private String nombre;
 private String apellido;
 
 private String fechaNacimiento;
 
 
 public Cliente() {
	 
 }


public Cliente(String cedula, String nombre, String apellido, String fechaNacimiento) {
	super();
	this.cedula = cedula;
	this.nombre = nombre;
	this.apellido = apellido;
	this.fechaNacimiento = fechaNacimiento;
}


public String getCedula() {
	return cedula;
}


public void setCedula(String cedula) {
	this.cedula = cedula;
}


public String getNombre() {
	return nombre;
}


public void setNombre(String nombre) {
	this.nombre = nombre;
}


public String getApellido() {
	return apellido;
}


public void setApellido(String apellido) {
	this.apellido = apellido;
}


public String getFechaNacimiento() {
	return fechaNacimiento;
}


public void setFechaNacimiento(String fechaNacimiento) {
	this.fechaNacimiento = fechaNacimiento;
}


@Override
public String toString() {
	return "Cliente [cedula=" + cedula + ", nombre=" + nombre + ", apellido=" + apellido + ", fechaNacimiento="
			+ fechaNacimiento + "]";
}
 
 
 
}
