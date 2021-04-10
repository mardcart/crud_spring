package mardcart.ar.spring.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mardcart.ar.spring.controlador.entity.Usuario;
import mardcart.ar.spring.dao.UsuarioDao;

@Controller
@RequestMapping("/usuario")
public class Controlador {
	
	@Autowired
	private UsuarioDao uDao;

	@RequestMapping("/listado")
	public String listadoUser(Model modelo) {
		
	List<Usuario> lista = uDao.getListadoUsuarios();
	
	modelo.addAttribute("listaUsers", lista);
		
		return "listado-user";
	}
	
	@RequestMapping("/mostrarFormulario")
	public String mostrarFormulario(Model modelo) {
		Usuario user = new Usuario();
		
		modelo.addAttribute("datoUsuario", user);
		
		return "formulario";
	}
	
	@PostMapping("/registrarUsuario")
	public String registrarUsuario(@ModelAttribute("datoUsuario") Usuario user) {
		
		uDao.insertarUsuario(user);
		return "redirect:/usuario/listado";
	}
	
	@GetMapping("/actualizarUsuario")
	public String actualizarUsuario(@RequestParam("idUsuario") int id,Model modelo) {
		
		Usuario user = uDao.getUsuario(id);
		
		modelo.addAttribute("datoUsuario",user);
		
		return "formulario";
		
	}
	
	@GetMapping("/eliminarUsuario")
	public String eliminarUsuario(@RequestParam("idUsuario") int id) {
		
		uDao.eliminarUsuario(id);
		
		return "redirect:/usuario/listado";
	}
	
}
