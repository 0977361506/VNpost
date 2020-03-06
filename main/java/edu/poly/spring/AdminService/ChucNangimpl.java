package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.spring.AdminRes.ChucnangRes;
import edu.poly.spring.EntitiesAdmin.chucnang;

@Service
public class ChucNangimpl  implements ChucNangService{
	

	@Autowired
	ChucnangRes chucnangRes;
	@Autowired
	EntityManagerFactory entityManagerFactory;
	
 @Override
public chucnang  save(chucnang entity) {
	return chucnangRes.save(entity);
}
@Override
public <S extends chucnang> Iterable<S> saveAll(Iterable<S> entities) {
	return chucnangRes.saveAll(entities);
}
@Override
public Optional<chucnang> findById(Integer id) {
	return chucnangRes.findById(id);
}
@Override
public boolean existsById(Integer id) {
	return chucnangRes.existsById(id);
}
@Override
public List<chucnang> findAll() {
	return (List<chucnang>) chucnangRes.findAll();
}
@Override
public Iterable<chucnang> findAllById(Iterable<Integer> ids) {
	return chucnangRes.findAllById(ids);
}
@Override
public long count() {
	return chucnangRes.count();
}
@Override
public void deleteById(Integer id) {
	chucnangRes.deleteById(id);
}
@Override
public void delete(chucnang entity) {
	chucnangRes.delete(entity);
}
@Override
public void deleteAll(Iterable<? extends chucnang> entities) {
	chucnangRes.deleteAll(entities);
}
@Override
public void deleteAll() {
	chucnangRes.deleteAll();
}

 public List<chucnang> find(int danhsach){
	 Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
	 String hqlString = "from chucnang c where c.chuc.id=:cid";
	 Query query = session.createQuery(hqlString);
	 query.setParameter("cid", danhsach);
	 List<chucnang> list = query.getResultList();
	 return list;
 }
 
} 
 