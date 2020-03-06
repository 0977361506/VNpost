package edu.poly.spring.EntitiesAdmin;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "Nhom")
public class Nhom  implements Serializable{
	@Id
	 String  ma ;
	String tennhom ;
	String tenbc;
	Integer stt1;
	String stt;
	public String getStt() {
		return stt;
	}
	public void setStt(String stt) {
		this.stt = stt;
	}
	public String getTenbc() {
		return tenbc;
	}
	public void setTenbc(String tenbc) {
		this.tenbc = tenbc;
	}
	
	public Integer getStt1() {
		return stt1;
	}
	public void setStt1(Integer stt1) {
		this.stt1 = stt1;
	}

	String 	mota ;
	@OneToMany(mappedBy = "nhom",cascade = CascadeType.ALL)
	List<usernhom> list;
	@OneToMany(mappedBy = "nhom",cascade = CascadeType.ALL)
	List<userrole> list2;
	
	public List<userrole> getList2() {
		return list2;
	}
	public void setList2(List<userrole> list2) {
		this.list2 = list2;
	}
	
	
	
	
	public String getMa() {
		return ma;
	}
	public void setMa(String ma) {
		this.ma = ma;
	}
	public String getTennhom() {
		return tennhom;
	}
	public void setTennhom(String tennhom) {
		this.tennhom = tennhom;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public List<usernhom> getList() {
		return list;
	}
	public void setList(List<usernhom> list) {
		this.list = list;
	}

}
