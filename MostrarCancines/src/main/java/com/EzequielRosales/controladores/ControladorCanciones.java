package com.EzequielRosales.controladores;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.EzequielRosales.modelos.Cancion;
import com.EzequielRosales.Servicios.ServicioCanciones;

@Controller
public class ControladorCanciones {
	
	@Autowired
	private final ServicioCanciones servicioCanciones;

	public ControladorCanciones(ServicioCanciones servicioCanciones) {
		this.servicioCanciones = servicioCanciones;
	}
	
	@GetMapping("/canciones")
	public String desplegarCanciones(Model modelo) {
		List<Cancion> listaDeCanciones = this.servicioCanciones.obtenerTodasLasCanciones();
		modelo.addAttribute("listaDeCanciones", listaDeCanciones);
		return "canciones.jsp";
	}
	
	@GetMapping("/canciones/detalle/{idCancion}")
	public String desplegarDetalleCancion(@PathVariable("idCancion") Long IdCancion, Model modelo) {
		Cancion cancion = this.servicioCanciones.obtenerCancionPorId(IdCancion);
		
		if(cancion == null) {
			return "redirect:/canciones";
		}
		
		modelo.addAttribute("cancion", cancion);
		return "detalleCancion.jsp";
	}
	
	
}
