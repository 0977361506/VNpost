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
	  // bai viet theo danh muc
	  List<DanhMuc> list2 = d.findbyCm(1);
	  List<DanhMuc> dm2= d.findbyCm(2);
	  List<DanhMuc> dm3 = d.findbyCm(3);
	  List<DanhMuc> dm4 = d.findbyCm(4);
	  // bai viet dac biett
	  List<BaiViet> list3 = b.findAll();
	  List<BaiViet> list4 = b.findbydb(1);
	  BaiViet baiViet = list4.get(0);
	  List<BaiViet> list5 = b.findbydb(2);
	  BaiViet baiViet1 = list5.get(0);
	  List<BaiViet> list6 = b.findbydb(3);
	  BaiViet baiViet2 = list6.get(0);
	  //add model
	  model.addAttribute ("listcm", list);
	  model.addAttribute ("listdm", list2);
	  model.addAttribute ("listdm2", dm2);
	  model.addAttribute ("listdm3", dm3);
	  model.addAttribute ("listdm4", dm4);
	  model.addAttribute ("listbv", list4);
	  model.addAttribute ("bvdb", baiViet);
	  model.addAttribute ("bvdb1", baiViet1);
	  model.addAttribute ("bvdb2", baiViet2);
	  System.out.println("chuyen muac " + list.size());
	  System.out.println("danh muc " + list2.size());
	  System.out.println("danh bv " + list4.size());
	  return "tintuc" ;
  }
  @RequestMapping("/taichinh/vn")
  public String taichinh() {
	  return "taichinh";
  }
  @RequestMapping("/phanphoi/vn")
  public String phanphoi() {
	  return "phanphoi";
  }
}
