package edu.poly.spring.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.poly.spring.recordConfig;
import edu.poly.spring.SerVice.BaiVietService;
import edu.poly.spring.model.BaiViet;

@Controller
public class BaivietTheoChuyenMuc {
 @Autowired
 BaiVietService baiViet ;
 
 @RequestMapping("/chuyenmuc/{id}")
 public String BvtheoCm(Model model , @PathVariable("id") Integer id) {
	 List<BaiViet> list = baiViet.tktheocm(id);
	
	 model.addAttribute("dsbvtheocm", list);
	 return "Tintuc/dstintuc";
 }
 @RequestMapping("/chitiet/{id}")
 public String chitiet(Model model ,@PathVariable("id") Integer bv) {
	 BaiViet bai = baiViet.tk(bv);
	
	 List<BaiViet> list = baiViet.tktheocm(bai.getChuyenMuc().getMaCM());
	 model.addAttribute("baiviet", bai);
	 model.addAttribute("dsbvtheocm", list);
	 return "Tintuc/chitiet";
 }
 @RequestMapping("/timkiem/baiviet")
 public String ketquatimkiem(Model model , @RequestParam("search") String tk) {
	 List<BaiViet> list = baiViet.findAll();
	 List<BaiViet> baiViets = new ArrayList<BaiViet>();
	 for(BaiViet b: list) {
		 if(b.getTenBV().toUpperCase().contains(tk.toUpperCase())) {
			 baiViets.add(b);
		 }
	 }
	 if(baiViets.size()==0) {
		 model.addAttribute("eror", "...........................................................................................................");
	 }
	 else if(baiViets.size()>0) {
		 model.addAttribute("dsbv", baiViets);
	 }
	 return "timkiem";
 }
 @ResponseBody
 @RequestMapping("/timkiem/baiviet1")
    public List<String> result(){
	 List<BaiViet> baiViets =baiViet.findAll();
	 List<String> tenList  = new ArrayList<String>();
	 for(BaiViet b: baiViets) {
		
			tenList.add(b.getTenBV());
		 
	 }
	 return tenList;
	 
 }
}
