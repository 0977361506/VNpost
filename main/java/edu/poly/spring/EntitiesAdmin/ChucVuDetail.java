package edu.poly.spring.EntitiesAdmin;

import javax.persistence.Table;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
@Table(name = "Danhsach")
public class ChucVuDetail implements Serializable {
	@Id
	 Integer id ;
	  String  ten ;
	  @ManyToOne
	  @JoinColumn(name = "maCV")
	  ChucVu chucvu;
	  @OneToMany(mappedBy = "chuc")
	  List<chucnang> list;
	  Boolean ok;
	public Boolean getOk() {
		return ok;
	}
	public void setOk(Boolean ok) {
		this.ok = ok;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public ChucVu getChucvu() {
		return chucvu;
	}
	public void setChucvu(ChucVu chucvu) {
		this.chucvu = chucvu;
	}
	public List<chucnang> getList() {
		return list;
	}
	public void setList(List<chucnang> list) {
		this.list = list;
	}
	  
}
