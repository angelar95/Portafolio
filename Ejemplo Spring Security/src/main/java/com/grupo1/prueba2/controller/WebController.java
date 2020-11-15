package com.grupo1.prueba2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.grupo1.prueba2.model.Usuario;
import com.grupo1.prueba2.repository.IUsuarioRepository;

@Controller
public class WebController {

	@ModelAttribute
	private Usuario usuario(){
		return new Usuario();
	}
	@Autowired
	public IUsuarioRepository repUsuario;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@GetMapping("/")
	public String inicio(Authentication auth) {
		if (auth.getAuthorities().contains(new SimpleGrantedAuthority("usertur"))) {
			return "turismo";
		} else if (auth.getAuthorities().contains(new SimpleGrantedAuthority("userpre"))) {
			return "premium";
		} else {
			return "administrador";
		}
	}
	
	@GetMapping("/login")
	public String login(String user, ModelMap model) {
		model.addAttribute("usuario", repUsuario.findByUser(user));
		return "login";
	}
	

	  @GetMapping("/servicioturismo") 
	  public String servTur() { 
		  return "turismo"; 
		  }
	
	 @GetMapping("/serviciopremium") 
	 public String servPre() { 
		 return "premium"; 
		 }
	 
	
}
