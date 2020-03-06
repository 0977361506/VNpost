package edu.poly.spring.EntitiesAdmin;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Quyen")
public class ChucVu implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	  Integer maCV ;
	 String  tenCV ;
	 @OneToMany(mappedBy = "chucvu")
	 List<ChucVuDetail> list;
	 @OneToMany(mappedBy = "chucvu")
	 List<userrole> list1;
	 Boolean ok;
	public Boolean getOk() {
		return ok;
	}
	public void setOk(Boolean ok) {
		this.ok = ok;
	}
	public Integer getMaCV() {
		return maCV;
	}
	public void setMaCV(Integer maCV) {
		this.maCV = maCV;
	}
	public String getTenCV() {
		return tenCV;
	}
	public void setTenCV(String tenCV) {
		this.tenCV = tenCV;
	}
	public List<ChucVuDetail> getList() {
		return list;
	}
	public void setList(List<ChucVuDetail> list) {
		this.list = list;
	}
	public List<userrole> getList1() {
		return list1;
	}
	public void setList1(List<userrole> list1) {
		this.list1 = list1;
	}
}
