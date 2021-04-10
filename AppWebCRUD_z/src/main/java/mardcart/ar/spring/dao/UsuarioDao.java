package mardcart.ar.spring.dao;

import java.util.List;

import mardcart.ar.spring.controlador.entity.Usuario;

public interface UsuarioDao {

	public List<Usuario> getListadoUsuarios();

	public void insertarUsuario(Usuario user);

	public Usuario getUsuario(int id);

	public void eliminarUsuario(int id);
}
