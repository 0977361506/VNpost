package edu.poly.spring.EntitiesAdmin;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.management.relation.Role;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


import org.springframework.format.annotation.DateTimeFormat;





@Entity
@Table(name = "Users")
public class NhanVien implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer maNV;
	String tentk;
	String tennv;
	String loaiCMT;

	String donvi;
	String email;
	Boolean trangthai;
	Boolean gioitinh;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	Date ngaysinh;
	public String getDonvi() {
		return donvi;
	}
	public void setDonvi(String donvi) {
		this.donvi = donvi;
	}
	Integer soCMT;
	Integer sdt;
	String tenchucdanh;
	String diachi;
	String pass;
	@OneToMany(mappedBy = "nhanvien", cascade = CascadeType.ALL)
	List<usernhom> list;
	@OneToMany(mappedBy = "nhanvien",cascade = CascadeType.ALL)
	List<Userungdung> list1;

	public Integer getMaNV() {
		return maNV;
	}
	public void setMaNV(Integer maNV) {
		this.maNV = maNV;
	}
	public String getTentk() {
		return tentk;
	}
	public void setTentk(String tentk) {
		this.tentk = tentk;
	}
	public String getTennv() {
		return tennv;
	}
	public void setTennv(String tennv) {
		this.tennv = tennv;
	}
	public String getLoaiCMT() {
		return loaiCMT;
	}
	public void setLoaiCMT(String loaiCMT) {
		this.loaiCMT = loaiCMT;
	}
	public String getDonVi() {
		return donvi;
	}
	public void setDonVi(String donVi) {
		this.donvi = donVi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Boolean getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(Boolean trangthai) {
		this.trangthai = trangthai;
	}
	public Boolean getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(Boolean gioitinh) {
		this.gioitinh = gioitinh;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public Integer getSoCMT() {
		return soCMT;
	}
	public void setSoCMT(Integer soCMT) {
		this.soCMT = soCMT;
	}
	public Integer getSdt() {
		return sdt;
	}
	public void setSdt(Integer sdt) {
		this.sdt = sdt;
	}
	public String getTenchucdanh() {
		return tenchucdanh;
	}
	public void setTenchucdanh(String tenchucdanh) {
		this.tenchucdanh = tenchucdanh;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public List<usernhom> getList() {
		return list;
	}
	public void setList(List<usernhom> list) {
		this.list = list;
	}
	public List<Userungdung> getList1() {
		return list1;
	}
	public void setList1(List<Userungdung> list1) {
		this.list1 = list1;
	}
	
	
}
