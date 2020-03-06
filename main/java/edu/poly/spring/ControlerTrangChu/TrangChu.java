package edu.poly.spring.ControlerTrangChu;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.poly.spring.viewConffig;
import edu.poly.spring.AdminRes.ChucnangRes;

import edu.poly.spring.AdminService.ChucNangService;
import edu.poly.spring.AdminService.ChucVuSerVice;
import edu.poly.spring.AdminService.DanhSachChuVuSerVice;
import edu.poly.spring.AdminService.NhanVienSer;
import edu.poly.spring.AdminService.NhomSER;
import edu.poly.spring.EntitiesAdmin.BuuChinh;
import edu.poly.spring.EntitiesAdmin.ChucVu;
import edu.poly.spring.EntitiesAdmin.ChucVuDetail;
import edu.poly.spring.EntitiesAdmin.NhanVien;
import edu.poly.spring.EntitiesAdmin.Nhom;
import edu.poly.spring.EntitiesAdmin.chucnang;
import edu.poly.spring.bean.DacBiet;
import javassist.expr.NewArray;
import edu.poly.spring.SerVice.CookieService;

@Controller
public class TrangChu {

	  @Autowired
	  NhomSER bc;
	@Autowired
	CookieService cookie;
  @Autowired
  NhanVienSer k;
   @Autowired
   DacBiet db;
	@Autowired
	ChucNangService chucnang;
	@Autowired
	DanhSachChuVuSerVice danhsach;
	@Autowired
	ChucVuSerVice chucvu;
	@Autowired
	HttpServletRequest request;
	@Autowired
	  HttpSession ses;

  @RequestMapping("/trangchu/giaodien")
   public String trnagchu(Model model) {
	  
	  List<Nhom> pList = bc.findAll();
	  System.out.println("kich thuoc" + pList.size());
	
	   return "trangchu/GiaoDienTrangChu";
   }
  @RequestMapping("/quantri/1")
  public String trnagchu1() {
	   return "trangchu/Quantri1";
  }
  @RequestMapping("/quantri/8")
  public String trnagchu8(Model model) {
	  model.addAttribute("kkkk", new NhanVien());
	   return "trangchu/quantri8";
  }
  @RequestMapping("/quantri/3")
  public String trnagchu11() {
	   return "trangchu/quantri3";
  }
  @RequestMapping("/quantri/2")
  public String trnagchu111() {
	   return "trangchu/quantri2";
  }
  @RequestMapping("/quantri/4")
  public String trnagchu1111() {
	   return "trangchu/quantri4";
  }
  @RequestMapping("/quantri/5")
  public String trnagchu11115() {
	   return "trangchu/quantri5";
  }
  @RequestMapping("/quantri/6")
  public String trnagchu11117() {
	   return "trangchu/quantri6";
  }
  @RequestMapping("/quantri/7")
  public String trnagchu1111e(Model model ) {
	  List<ChucVuDetail> danhsach1 = danhsach.findAll();
	  List<chucnang> chucnangs = chucnang.findAll();
	  NhanVien kNhanVien = (NhanVien) ses.getAttribute("user");
	  
	  //NhanVien  vien = k.findbyid(id);
		
	  List<Nhom> listt = db.chucvu(kNhanVien);
	  
	  List<ChucVu> list2t = db.chucVus(listt);
	 
	  List<ChucVuDetail> list3t = db.danhsachchucvu(list2t);
	  
	  List<chucnang> list4t = db.chucnang(list3t);
	  
	  DacBiet dacBiet = db.check(list4t,list2t, list3t); // tao đói tương
	  List<ChucVu> kkk = dacBiet.getChucvus();
	  List<chucnang> chucnangs2 = dacBiet.getChucnangs();
	   
	  List<Nhom> nhoms = bc.findAll();
	  model.addAttribute("nhom", nhoms);
	  model.addAttribute("nh", listt);
	  model.addAttribute("cv",list2t);
	  model.addAttribute("cvd", list3t);
	  model.addAttribute("cnn", list4t);
	   System.out.println("kich thuoc"+list2t.size());
	 
       model.addAttribute("dacbiet", kkk);
       model.addAttribute("cn", chucnangs2);// add lên view ? làm cách nào để lấy một trường vi dụ là list<chucvu>
//	  model.addAttribute("vip6", list2);
//	  model.addAttribute("vip7", list3);
//	  model.addAttribute("vip8", list4);
	  List<ChucVu> list = chucvu.findAll();
	  List<ChucVuDetail> list2 = danhsach.findbyChucVu(1);
	  List<ChucVuDetail> list3 = danhsach.findbyChucVu(2);
	  List<ChucVuDetail> list4 = danhsach.findbyChucVu(3);
	model.addAttribute("k", list);
	model.addAttribute("k1", list2);
	model.addAttribute("k2", list3);
	model.addAttribute("k3", list4);
	 DacBiet dacBiets = db.check(chucnangs, list, danhsach1);
	  model.addAttribute("themnhom", new Nhom());
	  List<chucnang> a1 = chucnang.find(1);
	  List<chucnang> a2 = chucnang.find(2);
	  
	  List<chucnang> a3 = chucnang.find(3);
	  
	  List<chucnang> a4 = chucnang.find(4);
	  
	  List<chucnang> a5 = chucnang.find(5);
	  
	  List<chucnang> a6  = chucnang.find(6);
	  
	  List<chucnang> a7 = chucnang.find(7);
	  
	  List<chucnang> a8 = chucnang.find(8);
	  
	  List<chucnang> a9 = chucnang.find(9);
	  
	  List<chucnang> a10 = chucnang.find(10);
	  
	  List<chucnang> a11 = chucnang.find(11);
	  
	  List<chucnang> a12 = chucnang.find(12);
	  
	  List<chucnang> a13 = chucnang.find(13);
	  
	  
	  List<chucnang> a14 = chucnang.find(14);
	  
	  List<chucnang> a15 = chucnang.find(15);
	  List<chucnang> a16 = chucnang.find(16);
	  
	  model.addAttribute("a1", a1);
	  model.addAttribute("a2", a2);
	  model.addAttribute("a3", a3);
	  model.addAttribute("a4", a4);
	  model.addAttribute("a5", a5);
	  model.addAttribute("a6", a6);
	  model.addAttribute("a7", a7);
	  
	  model.addAttribute("a8", a8);
	  model.addAttribute("a9", a9);
	  model.addAttribute("a10", a10);
	  model.addAttribute("a11", a11);
	  model.addAttribute("a12", a12);
	  model.addAttribute("a13", a13);
	  model.addAttribute("a14", a14);
	  model.addAttribute("a15", a15);
	  model.addAttribute("a16", a16);
//	  Cookie cook = cookie.read("tai");
//	 
//	  if(cook!=null) {
//		  String  idString = cook.getValue();
//		  System.out.println("ten nhan vien laf " + idString);
//	  }
//	  
	//  NhanVien nc = (edu.poly.spring.EntitiesAdmin.NhanVien) ses.getAttribute("user");
//	  NhanVien vien = k.findbyid(id);
//	  DacBiet dacBiet = db.check(vien.chucnang(vien), vien.chucVus(vien), vien.danhsachchucvu(vien));
//	  List<ChucVuDetail> kkChucVuDetails = dacBiet.getDanhsach();
//	  for(ChucVuDetail chucVuDetail : kkChucVuDetails) {
//		  System.out.println(chucVuDetail.getTen());
//	  }
		  
	 
	   return "trangchu/quantri7";
  }
  
  
}
