package edu.poly.spring.AdminController;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.poly.spring.AdminService.NhomSER;

import edu.poly.spring.EntitiesAdmin.Nhom;
@Controller
public class BuuChinhController {
  @Autowired
  NhomSER bc;
  
  @ResponseBody
  @RequestMapping("/timkiem/mabc1") 
  public List<String> ketqua(){
	  List<Nhom> pList = bc.findAll();
	  List<String> aList = new ArrayList<String>();
	  for(Nhom chinh : pList) {
		  aList.add(chinh.getTenbc());
	  }
	  return aList;
  }
  @RequestMapping("/timkiem/mabc")
  public String  ketList (Model model , @RequestParam("timkiem") String tk){
	  List<Nhom> pList = bc.findAll();
	  List<String> list = new ArrayList<String>();
	  for(Nhom vNhom : pList) {
		  if(vNhom.getTenbc().toLowerCase().contains(tk.toLowerCase())) {
			  list.add(vNhom.getTenbc());
		  }
	  }
	  model.addAttribute("kq",list);
	  return "trangchu/ketquatimkiem";
  }
  
  @RequestMapping("/timkiem/ungdung")
  public String timkiemkq(Model model, @RequestParam("tkud") String tkud ,@RequestParam("tkma") String tkma) {
	  List<Nhom> list = new ArrayList<Nhom>();
	  List<Nhom> list2 = bc.findAll();

	  for(Nhom nhom : list2) {
		 if(tkud.equals("")&& !tkma.equals("")) {
			if(nhom.getMa().toUpperCase().contains(tkma.toUpperCase())) {
				list.add(nhom);
			}
		 }
		 else if(tkma.equals("")&& !tkud.equals("")) {
			 if(nhom.getTennhom().toUpperCase().contains(tkud.toUpperCase())) {
				 list.add(nhom);
			 }
			 
		 }
		 else if(tkma.equals("")&& tkud.equals("")) {
			 list= list2;
		 }
		 else {
			model.addAttribute("mes", "ko tim thấy nhóm bạn tìm kiếm");
		}
	  }
      model.addAttribute("er", list.size());
	  model.addAttribute("tk", list);
	 return "trangchu/timkiem";
  }
}
