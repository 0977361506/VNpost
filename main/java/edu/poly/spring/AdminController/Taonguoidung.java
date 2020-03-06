package edu.poly.spring.AdminController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.spring.AdminService.NhanVienSer;
import edu.poly.spring.AdminService.NhomSER;
import edu.poly.spring.EntitiesAdmin.NhanVien;
import edu.poly.spring.EntitiesAdmin.Nhom;


@Controller
public class Taonguoidung {
	@Autowired
	NhanVienSer v;
	@Autowired
	NhomSER n;
	@RequestMapping("/quantri/ha")
  public String hhhe(Model model,@ModelAttribute("kkkk") NhanVien nhanVien) {
	  v.save(nhanVien);
	  
	  return "redirect:/quantri/8";
  }
	@RequestMapping("/themmoi/nhom")
	 public String themnhom(Model model,@ModelAttribute("themnhom") Nhom nhom) {
		  n.save(nhom);
		  
		  return "redirect:/quantri/7";
	  }
}
