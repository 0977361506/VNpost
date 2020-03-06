package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.spring.AdminRes.UngDungRes;
import edu.poly.spring.EntitiesAdmin.Ungdung;

@Service
public class Ungdungimpl implements UngdungSer {
	@Autowired
	UngDungRes ud;
	@Autowired
	EntityManagerFactory entityManagerFactory;
  @Override
public Ungdung save(Ungdung entity) {
	return ud.save(entity);
}

@Override
public <S extends Ungdung> Iterable<S> saveAll(Iterable<S> entities) {
	return ud.saveAll(entities);
}

@Override
public Optional<Ungdung> findById(Integer id) {
	return ud.findById(id);
}

@Override
public boolean existsById(Integer id) {
	return ud.existsById(id);
}

@Override
public Ungdung findById1(Integer id) {
	Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
	
	return session.find(Ungdung.class, id);
}

@Override
public List<Ungdung> findAll() {
	return (List<Ungdung>) ud.findAll();
}

@Override
public Iterable<Ungdung> findAllById(Iterable<Integer> ids) {
	return ud.findAllById(ids);
}

@Override
public long count() {
	return ud.count();
}

@Override
public void deleteById(Integer id) {
	ud.deleteById(id);
}

@Override
public void delete(Ungdung entity) {
	ud.delete(entity);
}

@Override
public void deleteAll(Iterable<? extends Ungdung> entities) {
	ud.deleteAll(entities);
}

@Override
public void deleteAll() {
	ud.deleteAll();
}
  
  
}
