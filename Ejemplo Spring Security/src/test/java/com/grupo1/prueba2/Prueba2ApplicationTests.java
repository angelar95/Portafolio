package com.grupo1.prueba2;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.grupo1.prueba2.model.Usuario;
import com.grupo1.prueba2.repository.IUsuarioRepository;

@SpringBootTest
class Prueba2ApplicationTests {

	@Autowired
	private IUsuarioRepository repUsuario;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@Test
	void contextLoads() {
		
		Usuario a = new Usuario();
		a.setId(1);
		a.setUser("admin");
		a.setPass(encoder.encode("123"));
		a.setRol("admin");
		repUsuario.save(a);
		
		Usuario t = new Usuario();
		t.setId(2);
		t.setUser("usertur");
		t.setPass(encoder.encode("123"));
		t.setRol("usertur");
		repUsuario.save(t);
		
		Usuario p = new Usuario();
		p.setId(3);
		p.setUser("userpre");
		p.setPass(encoder.encode("123"));
		p.setRol("userpre");
		repUsuario.save(p);
	}

}
