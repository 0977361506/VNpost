package edu.poly.spring.EntitiesAdmin;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "maBC")
public class BuuChinh implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
     Integer ma;
	String tenbc;
	public Integer getMa() {
		return ma;
	}
	public void setMa(Integer ma) {
		this.ma = ma;
	}
	public String getTenbc() {
		return tenbc;
	}
	public void setTenbc(String tenbc) {
		this.tenbc = tenbc;
	}
	
	
}
