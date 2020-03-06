package edu.poly.spring.bean;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import edu.poly.spring.EntitiesAdmin.ChucVu;
import edu.poly.spring.EntitiesAdmin.ChucVuDetail;
import edu.poly.spring.EntitiesAdmin.NhanVien;
import edu.poly.spring.EntitiesAdmin.Nhom;
import edu.poly.spring.EntitiesAdmin.chucnang;
import edu.poly.spring.EntitiesAdmin.usernhom;
import edu.poly.spring.EntitiesAdmin.userrole;

@Component
public class DacBiet {
 List<chucnang> chucnangs;
 List<ChucVu> chucvus;
 List<ChucVuDetail> danhsach;
public List<chucnang> getChucnangs() {
	return chucnangs;
}
public void setChucnangs(List<chucnang> chucnangs) {
	this.chucnangs = chucnangs;
}
public List<ChucVu> getChucvus() {
	return chucvus;
}
public void setChucvus(List<ChucVu> chucvus) {
	this.chucvus = chucvus;
}
public List<ChucVuDetail> getDanhsach() {
	return danhsach;
}
public void setDanhsach(List<ChucVuDetail> danhsach) {
	this.danhsach = danhsach;
}
public DacBiet(List<chucnang> chucnangs, List<ChucVu> chucvus, List<ChucVuDetail> danhsach) {
	super();
	this.chucnangs = chucnangs;
	this.chucvus = chucvus;
	this.danhsach = danhsach;
}
public DacBiet() {
	super();
}
public boolean ktra(int a, List<ChucVuDetail> b) {
  for(ChucVuDetail c : b) {
	  if(c.getId() == a) {
		  return true;
	  }
	 
  }
  return false;
}

public boolean ktra2(int a, List<ChucVu> b) {
	  for(ChucVu c : b) {
		  if(c.getMaCV()== a) {
			  return true;
		  }
		 
	  }
	  return false;
	}

public boolean ktra1(int a, List<chucnang> b) {
	  for(chucnang c : b) {
		  if(c.getMaCN() == a) {
			  return true;
		  }
		 
	  }
	  return false;
	}
public DacBiet check(List<chucnang> a,List<ChucVu> b, List<ChucVuDetail> c){
	List<ChucVu> list = new ArrayList<ChucVu>();
	List<chucnang> list1= new ArrayList<chucnang>();
	List<ChucVuDetail> list2 = new ArrayList<ChucVuDetail>();

	for(int i = 0 ; i<b.size(); i++) {
		if(b.get(i).getOk()== true) {
			list.add(b.get(i));
		      for(int j = 0 ; j<c.size() ;j++) {
			       if(c.get(j).getOk()==true) {
				      if(!ktra(c.get(j).getId(), list2)) {list2.add(c.get(j));}
			             for(int k = 0 ; k<a.size() ;k++) {

						     if(a.get(k).getOk()==true) {
		
							  if(!ktra1(a.get(k).getMaCN(), list1)) {  list1.add(a.get(k));}
	
						}
					}
				}
			}
		}
	}
	DacBiet dBiet = new DacBiet(list1, list, list2);
	return dBiet;
}

public List<Nhom> chucvu(NhanVien c){
	List<usernhom> kList = c.getList();
	List<Nhom> a  = new ArrayList<Nhom>();
	for(usernhom cc : kList) {
		a.add(cc.getNhom());
	}
	return a;
}
public List<ChucVu> chucVus(List<Nhom> a){
	
	 List<ChucVu> list = new ArrayList<ChucVu>();
	for(Nhom aNhom : a) {
		for(userrole r : aNhom.getList2()) {
			if(!ktra2(r.getChucvu().getMaCV(), list)) {
				list.add(r.getChucvu());
			}
		}
	}
	 return list;
}
public List<ChucVuDetail> danhsachchucvu(List<ChucVu> b){
	
	 List<ChucVuDetail> list = new ArrayList<ChucVuDetail>();
	 for(ChucVu c : b) {
		 for(ChucVuDetail s : c.getList()) {
			 if(!ktra(s.getId(), list)) {
				 list.add(s);
			 }
		 }
	 }
	 return list;
}

public List<chucnang> chucnang(List<ChucVuDetail> b){
	
	 List<chucnang> list = new ArrayList<chucnang>();
	for(ChucVuDetail s : b) {
		for(chucnang c : s.getList()) {
			if(!ktra1(c.getMaCN(), list)) {
				list.add(c);
			}
		}
	}
	 return list;
}
}
