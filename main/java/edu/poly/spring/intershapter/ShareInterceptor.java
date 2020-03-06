package edu.poly.spring.intershapter;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


import edu.poly.spring.AdminService.ChucNangService;
import edu.poly.spring.AdminService.ChucVuSerVice;
import edu.poly.spring.AdminService.DanhSachChuVuSerVice;
import edu.poly.spring.AdminService.NhanVienSer;
import edu.poly.spring.EntitiesAdmin.ChucVu;
import edu.poly.spring.EntitiesAdmin.ChucVuDetail;
import edu.poly.spring.EntitiesAdmin.NhanVien;



@Component
public class ShareInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	ChucNangService chucnang;
	@Autowired
	DanhSachChuVuSerVice danhsach;
	@Autowired
	ChucVuSerVice chucvu;
  @Override
public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
		ModelAndView modelAndView) throws Exception {
	  List<ChucVu> list = chucvu.findAll();
	  List<ChucVuDetail> list2 = danhsach.findbyChucVu(1);
	  List<ChucVuDetail> list3 = danhsach.findbyChucVu(2);
	  List<ChucVuDetail> list4 = danhsach.findbyChucVu(3);;
	
	
	 request.setAttribute("vip", list);
	 request.setAttribute("vip1", list2);
	 request.setAttribute("vip2", list3);
	 request.setAttribute("vip3", list4);
}
}
