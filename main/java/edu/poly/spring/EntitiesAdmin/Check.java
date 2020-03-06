package edu.poly.spring.EntitiesAdmin;

import java.io.Serializable;
import java.util.List;



public class Check implements Serializable {
   List<String> check;
  
   Integer ma;

public List<String> getCheck() {
	return check;
}

public void setCheck(List<String> check) {
	this.check = check;
}

public Integer getMa() {
	return ma;
}

public void setMa(Integer ma) {
	this.ma = ma;
}

public Check(List<String> check, Integer ma) {
	super();
	this.check = check;
	this.ma = ma;
}

public Check() {
	super();
}

   
}
