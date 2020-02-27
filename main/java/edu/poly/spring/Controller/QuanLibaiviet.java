package edu.poly.spring.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.support.incrementer.DataFieldMaxValueIncrementer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.poly.spring.SerVice.BaiVietService;
import edu.poly.spring.SerVice.ChuyenMucSerVice;
import edu.poly.spring.SerVice.CustomerSerVice;
import edu.poly.spring.SerVice.DanhMucSerVice;
import edu.poly.spring.model.BaiViet;
import edu.poly.spring.model.ChuyenMuc;
import edu.poly.spring.model.Customer;
import edu.poly.spring.model.DanhMuc;


@Controller
public class QuanLibaiviet {
  @Autowired
  BaiVietService dao;
  @Autowired
  ServletContext text;
  @Autowired
  ChuyenMucSerVice cm;
  @Autowired
  DanhMucSerVice dm;
  @RequestMapping("/admin/baiviet/index")
  public String index(Model model) {
	  BaiViet entity = new BaiViet();
	List<BaiViet>  list = dao.findAll();
	List<ChuyenMuc> list2 = cm.findAll();
	List<DanhMuc> list3 = dm.findAll();
	  model.addAttribute("baiviet", entity);
	  model.addAttribute("list", list);
	  model.addAttribute("list2", list2);
	  model.addAttribute("list3", list3);

  return "admin/baiviet/index";
}
  @RequestMapping("/admin/baiviet/edit/{id}")
  public String edit(Model model,@PathVariable("id") Integer id) {
	  BaiViet entity = dao.findbyId1(id);
	  List<BaiViet>  list =  dao.findAll();
	  model.addAttribute("baiviet", entity);
	  List<ChuyenMuc> list2 = cm.findAll();
		List<DanhMuc> list3 = dm.findAll();
	  model.addAttribute("list", list);
	  model.addAttribute("list2", list2);
	  model.addAttribute("list3", list3);

  return "admin/baiviet/index";
}
  @RequestMapping("/admin/baiviet/create")
  public String create(RedirectAttributes model,@ModelAttribute("baiviet") BaiViet customer,
		  
		@RequestParam("photo_file") MultipartFile file) throws IllegalStateException, IOException {
	  if(file.isEmpty()) {
		  customer.setPhoto("vip112.jpg");
	  }else {
		  customer.setPhoto(file.getOriginalFilename());
		  String pathString = text.getRealPath("/img/"+customer.getPhoto());
		  file.transferTo(new File(pathString));
	  }
	 dao.save(customer);
	 model.addAttribute("message", "tao bai viet thanh cong");
  return "redirect:/admin/baiviet/index";
}
  @RequestMapping("/admin/baiviet/update")
  public String update(RedirectAttributes model,@ModelAttribute("baiviet") BaiViet customer,@RequestParam(value = "id",required = false) Integer id1) {
	 
	  dao.update(customer);
	 model.addAttribute("message", "cap nhat thanh coong");
  return "redirect:/admin/baiviet/edit/"+customer.getId();
}
  @RequestMapping(value = { "/admin/baiviet/delete","/admin/customer/delete/{id}"})
  public String deString(RedirectAttributes model,@RequestParam(value = "id",required = false) Integer id1 , @PathVariable(value = "id", required = false) Integer id2) {

	 if(id1!= null) {
	   
		 dao.deleteById(id1);
	 }
	 else {
		
		
		 dao.deleteById(id2);
	 }
	 model.addAttribute("message", "Xoa  thanh coong");
  return "redirect:/admin/baiviet/index";
}
}