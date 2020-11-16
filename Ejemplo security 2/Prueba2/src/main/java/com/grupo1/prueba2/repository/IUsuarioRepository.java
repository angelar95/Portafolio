package com.grupo1.prueba2.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.grupo1.prueba2.model.Usuario;

public interface IUsuarioRepository extends JpaRepository<Usuario, Integer> {

	Usuario findByUser(String user);
}
