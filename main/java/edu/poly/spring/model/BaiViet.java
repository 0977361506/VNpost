package edu.poly.spring.model;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "BaiViet")
public class BaiViet {
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
   Integer id;
	String tenBV ;
	String photo ;
	String chitietphoto;
	String tomtat;
	public String getChitietphoto() {
		return chitietphoto;
	}
	public void setChitietphoto(String chitietphoto) {
		this.chitietphoto = chitietphoto;
	}
	public String getTomtat() {
		return tomtat;
	}
	public void setTomtat(String tomtat) {
		this.tomtat = tomtat;
	}
	
	public Date getMe() {
		return me;
	}
	public void setMe(Date me) {
		this.me = me;
	}

	String noidung ;
	Integer sobaiviet ;
	Boolean baivietdb ;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	Date me ;
	@ManyToOne
	@JoinColumn(name = "maCM")
	ChuyenMuc chuyenMuc;
	
	@ManyToOne
	@JoinColumn(name = "maDM")
	DanhMuc danhmuc;
	@ManyToMany
	@JoinTable(name = "baivietdaxem",
    joinColumns = @JoinColumn(name = "dm_id"),
    inverseJoinColumns = @JoinColumn(name = "cus_id"))
	List<Customer> customer;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTenBV() {
		return tenBV;
	}
	public void setTenBV(String tenBV) {
		this.tenBV = tenBV;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public Integer getSobaiviet() {
		return sobaiviet;
	}
	public void setSobaiviet(Integer sobaiviet) {
		this.sobaiviet = sobaiviet;
	}
	public Boolean getBaivietdb() {
		return baivietdb;
	}
	public void setBaivietdb(Boolean baivietdb) {
		this.baivietdb = baivietdb;
	}
	public ChuyenMuc getChuyenMuc() {
		return chuyenMuc;
	}
	public void setChuyenMuc(ChuyenMuc chuyenMuc) {
		this.chuyenMuc = chuyenMuc;
	}
	public DanhMuc getDanhmuc() {
		return danhmuc;
	}
	public void setDanhmuc(DanhMuc danhmuc) {
		this.danhmuc = danhmuc;
	}
	public List<Customer> getCustomer() {
		return customer;
	}
	public void setCustomer(List<Customer> customer) {
		this.customer = customer;
	}
}
