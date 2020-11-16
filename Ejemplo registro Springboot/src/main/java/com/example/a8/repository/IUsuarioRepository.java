package com.example.a8.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.a8.modelo.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {
	List<Usuario> findByNombre(String nombre);
	List<Usuario> findByRut(int rut);
	List<Usuario> findAllByOrderByApellidoAsc();
}
