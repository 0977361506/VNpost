package edu.poly.spring.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.criteria.CriteriaBuilder.In;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;


import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "Customer")
public class Customer {
   @Id
  
   String id ;
   @Length(min = 6)
   String password ;
   @NotEmpty(message = "nhap day du thong tin")
   String fullname ;
   @NotEmpty
   @Email
  String  email ;
   String photo ;
  Boolean activated ;
   Boolean admin ;
  @ManyToMany(mappedBy = "customer")
  List<BaiViet> list;

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public List<BaiViet> getList() {
	return list;
}
public void setList(List<BaiViet> list) {
	this.list = list;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getFullname() {
	return fullname;
}
public void setFullname(String fullname) {
	this.fullname = fullname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo = photo;
}
public Boolean getActivated() {
	return activated;
}
public void setActivated(Boolean activated) {
	this.activated = activated;
}
public Boolean getAdmin() {
	return admin;
}
public void setAdmin(Boolean admin) {
	this.admin = admin;
}

}

