package com.example.a8.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

@Entity
public class Usuario {

	@Id
	@Column(nullable = false)
	@Min(1)
	private int rut;

	@Column(name = "dv", nullable = false)
	@Size (min=1,message="DV no válido")
	private String dv;

	@Column(length = 50, name = "nombre")
	@Size(min = 1, message = "Nombre no válido")
	private String nombre;

	@Column(length = 50, name = "apellido")
	@Size(min = 1, message = "Apellido no válido")
	private String apellido;

	@Column(name = "direccion", nullable = false)
	@Size(min = 1, message = "Dirección no válida")
	private String direccion;

	@Column(name = "ciudad", nullable = false)
	@Size(min = 1, message = "Ciudad no válida")
	private String ciudad;

	public Usuario() {
		// TODO Auto-generated constructor stub
	}

	public Usuario(@Min(1) int rut, @Min(1) String dv, @Size(min = 1, message = "Nombre no válido") String nombre,
			@Size(min = 1, message = "Apellido no válido") String apellido,
			@Size(min = 1, message = "Dirección no válida") String direccion,
			@Size(min = 1, message = "Ciudad no válida") String ciudad) {
		super();
		this.rut = rut;
		this.dv = dv;
		this.nombre = nombre;
		this.apellido = apellido;
		this.direccion = direccion;
		this.ciudad = ciudad;
	}

	public int getRut() {
		return rut;
	}

	public void setRut(int rut) {
		this.rut = rut;
	}

	public String getDv() {
		return dv;
	}

	public void setDv(String dv) {
		this.dv = dv;
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

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	@Override
	public String toString() {
		return "Usuario [rut=" + rut + ", dv=" + dv + ", nombre=" + nombre + ", apellido=" + apellido + ", direccion="
				+ direccion + ", ciudad=" + ciudad + "]";
	}
	
	

}
