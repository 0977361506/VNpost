package edu.poly.spring.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.spring.SerVice.BaiVietService;
import edu.poly.spring.model.BaiViet;

@Controller
public class Baiviettheodanhmuc {
	@Autowired
	BaiVietService b;
  @RequestMapping("/danhmuc/{id}")
  public String baivetdanhmuc(Model model,@PathVariable("id") Integer id) {
	  List<BaiViet> list = b.tktheodm(id);
	  model.addAttribute("bvdm",list);
	  return  "Tintuc/dstintuc";
  }
}
