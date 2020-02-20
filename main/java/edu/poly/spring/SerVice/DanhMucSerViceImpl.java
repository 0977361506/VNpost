package edu.poly.spring.SerVice;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import edu.poly.spring.Responsitory.ChuyenMucRes;
import edu.poly.spring.Responsitory.DanhMucRes;
import edu.poly.spring.model.BaiViet;
import edu.poly.spring.model.DanhMuc;

@Service
public class DanhMucSerViceImpl implements DanhMucSerVice{
	@Autowired
	DanhMucRes dm;
	@Autowired
	EntityManagerFactory en;
	public List<DanhMuc> findbyCm(int id){
	
			Session session  = en.createEntityManager().unwrap(Session.class);
			String hqlString ="From DanhMuc p where p.chuyenMuc.maCM=:cid";
			Query query =  session.createQuery(hqlString);
			query.setMaxResults(9);
			query.setParameter("cid",id);
			List<DanhMuc> list = query.getResultList();
			return list;
	}
  @Override
public DanhMuc save(DanhMuc entity) {
	return dm.save(entity);
}

@Override
public <S extends DanhMuc> Iterable<S> saveAll(Iterable<S> entities) {
	return dm.saveAll(entities);
}

@Override
public Optional<DanhMuc> findById(Integer id) {
	return dm.findById(id);
}

@Override
public boolean existsById(Integer id) {
	return dm.existsById(id);
}

@Override
public List<DanhMuc> findAll() {
	return (List<DanhMuc>) dm.findAll();
}

@Override
public Iterable<DanhMuc> findAllById(Iterable<Integer> ids) {
	return dm.findAllById(ids);
}

@Override
public long count() {
	return dm.count();
}

@Override
public void deleteById(Integer id) {
	dm.deleteById(id);
}

@Override
public void delete(DanhMuc entity) {
	dm.delete(entity);
}

@Override
public void deleteAll(Iterable<? extends DanhMuc> entities) {
	dm.deleteAll(entities);
}

@Override
public void deleteAll() {
	dm.deleteAll();
}
}
