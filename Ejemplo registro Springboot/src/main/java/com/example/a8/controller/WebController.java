package com.example.a8.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.example.a8.modelo.Usuario;

import com.example.a8.repository.IUsuarioRepository;

@Controller
public class WebController {

	@Autowired
	private IUsuarioRepository rep;
	
	
	@ModelAttribute
	public Usuario setUsuario() {
		return new Usuario();
	}
	
	/*Accesos a JSP por GET*/	
	@GetMapping("/")
	public String inicio(ModelMap model) {
		model.put("usuarios", rep.findAll());
		return "index";
	}
	
	@GetMapping("agregar")
	public String agregarUsuario(ModelMap model) {
		
		return "agregar";
	}
	
	@GetMapping("modificar")
	public String modificarJSP(ModelMap model) {
		model.put("usuarios", rep.findAll());
		return "modificar";
	}
	
	
	@GetMapping("listar")
	public String mostrar(ModelMap model) {
		model.addAttribute("usuarios", rep.findAll());
		return "listar";
	}
	
	
	/* Formularios */

	@PostMapping("formulario")
	public String formulario(@Valid @ModelAttribute("usuario")  Usuario u, BindingResult rs,  ModelMap model) {
		if (rs.hasErrors()) {
			model.put("usuarios", rep.findAll());
			return "agregar";
		} else {
			rep.save(u);
			model.put("usuarios",u);
			model.put("usuarios", rep.findAll());
			return "listar";
		}
	}
	
	
	
	@PostMapping("modificarC")
	public String modd(Usuario u, ModelMap model) {
		model.put("usuarios", rep.getOne(u.getRut()));
		return "modificar";
	}
	@PostMapping("modificarUsuario")
	public String modificar(@Valid @ModelAttribute("usuario") Usuario u, BindingResult rs, ModelMap model) {
		if (rs.hasErrors()) {
			model.addAttribute("usuarios", rep.getOne(u.getRut()));
			return "modificar";
		} else {
			rep.save(u);
			model.put("usuarios", u);
			model.put("usuarios", rep.findAll());
			return "listar";

		}
	}
	
	@PostMapping("buscarEliminarR")
	public String buscarEliminaroR(int rut, ModelMap model) 
	{
		model.addAttribute("usuarios", rep.findByRut(rut));
		return "eliminar";
	}
	
	@PostMapping("FormEliminar")
	public String eliminar(Usuario u, ModelMap model) {
		rep.deleteById(u.getRut());
		model.put("usuarios", rep.findAll());
		return "listar";
	}
	
	@PostMapping("buscarUsuarioR")
	public String buscarUsuarioR(int rut, ModelMap model) 
	{
		model.addAttribute("usuarios", rep.findByRut(rut));
		
		return "modificar";
	}
	
	@PostMapping("buscarR")
	public String buscarR(int rut, ModelMap model) 
	{
		model.addAttribute("usuarios", rep.findByRut(rut));
		
		return "listar";
	}
}
