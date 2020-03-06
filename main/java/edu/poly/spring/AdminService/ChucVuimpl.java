package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.spring.AdminRes.ChucVuRes;
import edu.poly.spring.EntitiesAdmin.ChucVu;

@Service
public class ChucVuimpl implements ChucVuSerVice{
	@Autowired
	EntityManagerFactory entityManagerFactory;
	@Autowired
	ChucVuRes chucVuRes;
   @Override
public ChucVu save(ChucVu entity) {
	return chucVuRes.save(entity);
}
@Override
public <S extends ChucVu> Iterable<S> saveAll(Iterable<S> entities) {
	return chucVuRes.saveAll(entities);
}
@Override
public Optional<ChucVu> findById(Integer id) {
	return chucVuRes.findById(id);
}
@Override
public ChucVu findById1(Integer id) {
	Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
	
	return session.find(ChucVu.class, id);
}
@Override
public boolean existsById(Integer id) {
	return chucVuRes.existsById(id);
}
@Override
public List<ChucVu> findAll() {
	return (List<ChucVu>) chucVuRes.findAll();
}
@Override
public Iterable<ChucVu> findAllById(Iterable<Integer> ids) {
	return chucVuRes.findAllById(ids);
}
@Override
public long count() {
	return chucVuRes.count();
}
@Override
public void deleteById(Integer id) {
	chucVuRes.deleteById(id);
}
@Override
public void delete(ChucVu entity) {
	chucVuRes.delete(entity);
}
@Override
public void deleteAll(Iterable<? extends ChucVu> entities) {
	chucVuRes.deleteAll(entities);
}
@Override
public void deleteAll() {
	chucVuRes.deleteAll();
}
   
   
}
 