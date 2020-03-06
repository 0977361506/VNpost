package edu.poly.spring.AdminService;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.spring.AdminRes.DanhsachChucVuRes;
import edu.poly.spring.EntitiesAdmin.ChucVu;
import edu.poly.spring.EntitiesAdmin.ChucVuDetail;

@Service
public class DanhSachChucVuimpl implements DanhSachChuVuSerVice{
   @Autowired
   DanhsachChucVuRes dsChucVuRes;
   @Autowired
   EntityManagerFactory entityManagerFactory ;
@Override
public ChucVuDetail  save(ChucVuDetail entity) {
	return dsChucVuRes.save(entity);
}
@Override
public List<ChucVuDetail> findAll() {
	return (List<ChucVuDetail>) dsChucVuRes.findAll();
}
@Override
public void delete(ChucVuDetail entity) {
	dsChucVuRes.delete(entity);
}
@Override
public ChucVuDetail findbyid(Integer id) {
	Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
	return session.find(ChucVuDetail.class, id);
}
 public List<ChucVuDetail>  findbyChucVu(Integer id){
	 Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
	String query = "From ChucVuDetail c where c.chucvu.maCV=:cid ";
	Query query2 = session.createQuery(query);
	query2.setParameter("cid", id);
	List<ChucVuDetail> list = query2.getResultList();
	return list;
	 
 }
}
