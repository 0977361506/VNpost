package edu.poly.spring.AdminController;

import java.util.List;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import edu.poly.spring.AdminService.UngdungSer;
import edu.poly.spring.EntitiesAdmin.BuuChinh;
import edu.poly.spring.EntitiesAdmin.Ungdung;
import edu.poly.spring.model.BaiViet;

@Controller
public class Test {
	@Autowired
	UngdungSer ungdungSer;
	
  @RequestMapping("/test")
   public String test(){
	  List<Ungdung> list = ungdungSer.findAll();
	
	  System.out.println("so luong ma buu chinh" + list.size());
	  return "index";
  }
}
