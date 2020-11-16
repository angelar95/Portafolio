package com.example.a8;
import static org.junit.jupiter.api.Assertions.assertTrue;


import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.a8.modelo.Usuario;
import com.example.a8.repository.IUsuarioRepository;

@SpringBootTest
class A9ApplicationTests {
	@Autowired
	private IUsuarioRepository rep;

	@Test
	void contextLoads() {
		
		Usuario u = new Usuario();
		u.setNombre("algo");
		u.setApellido("otro algo");
		
		
		Usuario resp = rep.save(u);
		
		assertTrue(u.getRut()==resp.getRut());
		
		
	}

}
