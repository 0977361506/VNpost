package edu.poly.spring.EntitiesAdmin;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "chucnang")
public class chucnang implements Serializable {
	@Id
	 Integer  maCN ;
	@ManyToOne
	@JoinColumn(name = " mads")
	ChucVuDetail chuc;
	   String tenCN ;
	   Boolean ok;
	   String kihieu;
	public String getKihieu() {
		return kihieu;
	}
	public void setKihieu(String kihieu) {
		this.kihieu = kihieu;
	}
	public Boolean getOk() {
		return ok;
	}
	public void setOk(Boolean ok) {
		this.ok = ok;
	}
	public Integer getMaCN() {
		return maCN;
	}
	public void setMaCN(Integer maCN) {
		this.maCN = maCN;
	}
	public ChucVuDetail getChuc() {
		return chuc;
	}
	public void setChuc(ChucVuDetail chuc) {
		this.chuc = chuc;
	}
	public String getTenCN() {
		return tenCN;
	}
	public void setTenCN(String tenCN) {
		this.tenCN = tenCN;
	}

	 
}
