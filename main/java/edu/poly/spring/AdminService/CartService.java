package edu.poly.spring.AdminService;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import edu.poly.spring.EntitiesAdmin.NhanVien;


@SessionScope //scopedTarget.cartService
@Service
public class CartService {
	@Autowired
	NhanVienSer nhanvien;
  public Map<Integer,NhanVien> lisMap = new HashMap<>();
  public void add(Integer id) {
	NhanVien nv = lisMap.get(id);
	lisMap.put(id, nv);
  }
  public void remove(Integer id) {
	  lisMap.remove(id);
  }
 public void clear() {
	 lisMap.clear();
 }



 public  Collection<NhanVien> getItems(){
	return  lisMap.values();
	
 }
}
