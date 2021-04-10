package mardcart.ar.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mardcart.ar.spring.controlador.entity.Usuario;

@Repository
public class UsuarioDaoClase implements UsuarioDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Usuario> getListadoUsuarios() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		Query<Usuario> query = session.createQuery("from Usuario", Usuario.class);
		
		List<Usuario> listaUsers = query.getResultList();
		
		return listaUsers;
	}

	@Override
	@Transactional
	public void insertarUsuario(Usuario user) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
	
		session.saveOrUpdate(user);
	}

	@Override
	@Transactional
	public Usuario getUsuario(int id) {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		
		Usuario user = session.get(Usuario.class, id);
		
		return user;
	}

	@Override
	@Transactional
	public void eliminarUsuario(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		Query consulta = session.createQuery("delete from Usuario where id=:idDelUsuario");
		
		consulta.setParameter("idDelUsuario", id);
		consulta.executeUpdate();
	}

	
}
