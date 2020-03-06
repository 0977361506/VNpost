package edu.poly.spring.EntitiesAdmin;

import javax.persistence.Table;


import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


@Entity
@Table(name = "Ungdung")
public class Ungdung {
	@Id
	
	 String maud;
	   String tenUD ;
		@OneToMany(mappedBy = "ungdung")
		List<Userungdung> list1;
		public String getMaud() {
			return maud;
		}
		public void setMaud(String maud) {
			this.maud = maud;
		}
		public String getTenUD() {
			return tenUD;
		}
		public void setTenUD(String tenUD) {
			this.tenUD = tenUD;
		}
		public List<Userungdung> getList1() {
			return list1;
		}
		public void setList1(List<Userungdung> list1) {
			this.list1 = list1;
		}
}