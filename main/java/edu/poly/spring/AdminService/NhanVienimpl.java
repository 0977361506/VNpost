package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.spring.AdminRes.NhanvienRes;
import edu.poly.spring.EntitiesAdmin.NhanVien;
import edu.poly.spring.EntitiesAdmin.Ungdung;

@Service
public class NhanVienimpl  implements NhanVienSer{
   @Autowired
   NhanvienRes nv;
   @Autowired
   
   EntityManagerFactory entityManagerFactory;
   
  
   public NhanVien findbyName(String name) {
	   Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
	   String sqlString = "from NhanVien u where u.tennv=:name";
	   Query query = session.createQuery(sqlString);
	   query.setParameter("name", name);
	   List<NhanVien> list = query.getResultList();
	   if(list.size()>0) {
		   return list.get(0);
	   }
	   return null;
	   
   }
   @Override
public NhanVien findbyid(Integer id) {
	   Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
	 NhanVien bNhanVien =  session.find(NhanVien.class, id);
	  return bNhanVien;
   }
@Override
public NhanVien save(NhanVien entity) {
	return nv.save(entity);
}

@Override
public Optional<NhanVien> findById(Integer id) {
	return nv.findById(id);
}
public boolean existsById(Integer id) {
	return nv.existsById(id);
}
@Override
public Iterable<NhanVien> findAll() {
	return nv.findAll();
}


@Override
public void delete(NhanVien entity) {
	nv.delete(entity);
}
@Override
public Ungdung findbyid(String id) {
	// TODO Auto-generated method stub
	return null;
}


}
