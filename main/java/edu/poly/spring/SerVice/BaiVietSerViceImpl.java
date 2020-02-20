package edu.poly.spring.SerVice;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import edu.poly.spring.Responsitory.BaiVietRes;
import edu.poly.spring.model.BaiViet;

@Service
public class BaiVietSerViceImpl  implements BaiVietService{

	@Autowired
	BaiVietRes bv;
	  @Autowired
	  EntityManagerFactory entityManagerFactory;
  @Override
public  BaiViet save(BaiViet entity) {
	return bv.save(entity);
}
    public List<BaiViet> tktheocm(Integer id){
        Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
        String hqString = "From BaiViet b where b.chuyenMuc.maCM=:cid";
        Query query = session.createQuery(hqString);
        query.setMaxResults(4);
        query.setParameter("cid", id);
        List<BaiViet> list = query.getResultList();
        return list;
    }

	public List<BaiViet> findbydb(Integer id){
		Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
		String hqlString = "From BaiViet b where b.baivietdb=true and b.chuyenMuc.maCM=:cid";
		Query query = session.createQuery(hqlString);
		query.setParameter("cid", id);
		List<BaiViet> list = query.getResultList();
		return list;
	}
	public BaiViet tk(Integer id) {
		Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
		BaiViet product = session.find(BaiViet.class, id);
		return product;
	}
@Override
public Optional<BaiViet> findById(Integer id) {
	return bv.findById(id);
}

@Override
public boolean existsById(Integer id) {
	return bv.existsById(id);
}

@Override
public List<BaiViet> findAll() {
	return (List<BaiViet>) bv.findAll();
}

@Override
public Iterable<BaiViet> findAllById(Iterable<Integer> ids) {
	return bv.findAllById(ids);
}

@Override
public long count() {
	return bv.count();
}

@Override
public void deleteById(Integer id) {
	bv.deleteById(id);
}

@Override
public void delete(BaiViet entity) {
	bv.delete(entity);
}

@Override
public void deleteAll(Iterable<? extends BaiViet> entities) {
	bv.deleteAll(entities);
}

@Override
public void deleteAll() {
	bv.deleteAll();
}
}
