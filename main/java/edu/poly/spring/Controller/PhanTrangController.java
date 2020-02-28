package edu.poly.spring.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.poly.spring.SerVice.BaiVietService;
import edu.poly.spring.model.BaiViet;

@Controller
public class PhanTrangController {
	@Autowired
	BaiVietService baiviet;

	@ResponseBody
	@GetMapping("/baiviet/phantrang/soluong")
	public ResponseEntity<Integer> soluongtrang() {
		int sz = 2;
		Integer t = baiviet.soluong(2);
		return new ResponseEntity<Integer>(t, HttpStatus.OK);
	}
	
	
	@ResponseBody
	@RequestMapping("/baiviet/phantrang/trang/{pageno}")
	
	public Boolean trang(Model model, @PathVariable("pageno") Integer id) {
		int sz = 2;
		List<BaiViet> list = baiviet.phantrang(id, sz);
		if (list.size() > 0) {
			model.addAttribute("list1", list);
			return true;
		}

		return false;
	}
}
