package edu.poly.spring.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ChuyenMuc")
public class ChuyenMuc {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer maCM ;
	String tenCM ;
	@OneToMany(mappedBy = "chuyenMuc")
	List<DanhMuc> listDanhMucs;
	@OneToMany(mappedBy = "chuyenMuc")
	List<BaiViet> listbaBaiViets;

	public Integer getMaCM() {
		return maCM;
	}
	public void setMaCM(Integer maCM) {
		this.maCM = maCM;
	}
	public String getTenCM() {
		return tenCM;
	}
	public void setTenCM(String tenCM) {
		this.tenCM = tenCM;
	}
	public List<DanhMuc> getListDanhMucs() {
		return listDanhMucs;
	}
	public void setListDanhMucs(List<DanhMuc> listDanhMucs) {
		this.listDanhMucs = listDanhMucs;
	}
	public List<BaiViet> getListbaBaiViets() {
		return listbaBaiViets;
	}
	public void setListbaBaiViets(List<BaiViet> listbaBaiViets) {
		this.listbaBaiViets = listbaBaiViets;
	}
	
}
