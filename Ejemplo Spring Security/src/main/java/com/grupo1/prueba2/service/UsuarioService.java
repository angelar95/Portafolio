package com.grupo1.prueba2.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.grupo1.prueba2.model.Usuario;
import com.grupo1.prueba2.repository.IUsuarioRepository;


@Service
public class UsuarioService implements UserDetailsService{

	@Autowired
	private IUsuarioRepository repo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
		Usuario u = repo.findByUser(username);
		ArrayList<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority(u.getRol()));
		UserDetails userDT = new User(u.getUser(), u.getPass(), roles);
		return userDT;
	}
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	 
	public Usuario registerNewUserAccount(Usuario u) {
	    Usuario user = new Usuario();
	    user.setUser(u.getUser());
	    user.setPass(passwordEncoder.encode(u.getPass()));
	    user.setRol(u.getRol());
	    return repo.save(user);
	}
}
