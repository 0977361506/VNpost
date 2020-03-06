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
@Table(name = "user_ungdung")
public class Userungdung implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id ;

	@ManyToOne
	@JoinColumn(name = "maud")
	Ungdung ungdung ;
	@ManyToOne
	@JoinColumn(name = "manv")
	NhanVien nhanvien;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Ungdung getUngdung() {
		return ungdung;
	}
	public void setUngdung(Ungdung ungdung) {
		this.ungdung = ungdung;
	}
	public NhanVien getNhanvien() {
		return nhanvien;
	}
	public void setNhanvien(NhanVien nhanvien) {
		this.nhanvien = nhanvien;
	}
	
}
