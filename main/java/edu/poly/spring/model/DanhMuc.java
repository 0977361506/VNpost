package edu.poly.spring.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "DanhMuc")
public class DanhMuc {
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   Integer id;
	String tenDM ;
	@ManyToOne
	@JoinColumn(name = "maCM")
	ChuyenMuc chuyenMuc;
	@OneToMany(mappedBy = "danhmuc")
	List<BaiViet> list;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTenDM() {
		return tenDM;
	}
	public void setTenDM(String tenDM) {
		this.tenDM = tenDM;
	}
	public ChuyenMuc getChuyenMuc() {
		return chuyenMuc;
	}
	public void setChuyenMuc(ChuyenMuc chuyenMuc) {
		this.chuyenMuc = chuyenMuc;
	}

}
