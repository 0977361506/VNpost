package edu.poly.spring.EntitiesAdmin;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_nhom")
public class usernhom implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer man;
	@ManyToOne
	@JoinColumn(name = "ma")
	Nhom nhom ;
	
	@ManyToOne
	@JoinColumn(name = "maNV")
	  NhanVien nhanvien ;

	

	
	public Integer getMan() {
		return man;
	}

	public void setMan(Integer man) {
		this.man = man;
	}

	public Nhom getNhom() {
		return nhom;
	}

	public void setNhom(Nhom nhom) {
		this.nhom = nhom;
	}

	public NhanVien getNhanvien() {
		return nhanvien;
	}

	public void setNhanvien(NhanVien nhanvien) {
		this.nhanvien = nhanvien;
	}


}
