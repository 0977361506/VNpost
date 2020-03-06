package edu.poly.spring.AdminController;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.poly.spring.AdminRes.DanhsachChucVuRes;
import edu.poly.spring.AdminService.ChucNangService;
import edu.poly.spring.AdminService.DanhSachChuVuSerVice;
import edu.poly.spring.AdminService.NhanVienSer;
import edu.poly.spring.AdminService.NhomSER;
import edu.poly.spring.EntitiesAdmin.Check;
import edu.poly.spring.EntitiesAdmin.ChucVu;
import edu.poly.spring.EntitiesAdmin.ChucVuDetail;
import edu.poly.spring.EntitiesAdmin.NhanVien;
import edu.poly.spring.EntitiesAdmin.Nhom;
import edu.poly.spring.EntitiesAdmin.chucnang;
import edu.poly.spring.bean.DacBiet;


@Controller
public class Taonguoidung {
	@Autowired
	HttpSession s;
	@Autowired
	DacBiet d;
	@Autowired
	NhanVienSer v;
	@Autowired
	NhomSER n;
	@Autowired
	DanhSachChuVuSerVice ds;
	@Autowired
	ChucNangService cn;
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
	@RequestMapping("/check/edit")
	@ResponseBody
	public List<chucnang> updatePer(@RequestBody(required = false)  Check group) { 
		System.out.println(group.getMa());
//		     ChucVuDetail chucVuDetail = ds.findbyid(group.getMa());
		    NhanVien  nhan = (NhanVien) s.getAttribute("user");
		    List<Nhom> list = d.chucvu(nhan);
		    List<ChucVu> list2 = d.chucVus(list);
		    List<ChucVuDetail> list3 = d.danhsachchucvu(list2);
		    List<String>  machucnang = group.getCheck();
		    List<chucnang> list4 = new ArrayList<chucnang>();
		    List<chucnang> chucnangs = new ArrayList<chucnang>();
		    for(String integer : machucnang) {
		    	chucnang c = cn.findbychuc(Integer.parseInt(integer));
		    	chucnangs.add(c);
		    }
		
		return chucnangs;
			

			

	}
}

