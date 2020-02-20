package edu.poly.spring.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.spring.SerVice.BaiVietService;
import edu.poly.spring.SerVice.ChuyenMucSerVice;
import edu.poly.spring.SerVice.DanhMucSerVice;
import edu.poly.spring.model.BaiViet;
import edu.poly.spring.model.ChuyenMuc;
import edu.poly.spring.model.DanhMuc;

@Controller
public class ChuyenMucController {
  @Autowired
  ChuyenMucSerVice c;
  @Autowired
  DanhMucSerVice d;
  @Autowired
  BaiVietService b;
  @RequestMapping("/tintuc/vn")
  public String  tintuc(Model model) {
	  List<BaiViet> listt = b.tktheocm(1);
	  List<ChuyenMuc> list = c.findAll();
	  List<DanhMuc> list2 = d.findbyCm(1);
	  List<BaiViet> list3 = b.findAll();
	  List<BaiViet> list4 = b.findbydb(1);
	  model.addAttribute ("listcm", list);
	  model.addAttribute ("listdm", list2);
	  model.addAttribute ("listbv", list4);
	  model.addAttribute ("listt", listt);
	  System.out.println("chuyen muac " + list.size());
	  System.out.println("danh muc " + list2.size());
	  System.out.println("danh bv " + list4.size());
	  return "tintuc" ;
  }
}
