package com.grupo1.actividad3;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.actividad3.modelo.Producto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	@RequestMapping(value = "agregarProducto", method = RequestMethod.GET)
	public String agregar(Locale locale, Model model) {
		
		return "agregar";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public ModelAndView getAgregar(HttpServletRequest request) {
		
		String nombre = request.getParameter("txtNombre");
		int id = Integer.parseInt(request.getParameter("txtID"));
		int precio = Integer.parseInt(request.getParameter("txtPrecio"));
		int stock = Integer.parseInt(request.getParameter("txtStock"));
		
        ModelAndView modelo = new ModelAndView();
		Producto pro = new Producto(id, nombre, precio, stock);
		
		ArrayList<Producto> productos = new ArrayList<Producto>;
		
		if(productos != null) {
			
		}
		
		else {
			
		}
		
		
		
		
		//modelo.addObject("msg", mensaje);
		
		//modelo.setViewName("resumen");
		
		return modelo;
		
		
		
		
	}
	
	
}
