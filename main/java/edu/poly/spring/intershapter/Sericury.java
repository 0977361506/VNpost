package edu.poly.spring.intershapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import edu.poly.spring.model.Customer;


@Component
public class Sericury extends HandlerInterceptorAdapter {
@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
		throws Exception {
	 HttpSession session = request.getSession();
	 Customer customer= (Customer) session.getAttribute("user");
	 if(customer==null) {
		 session.setAttribute("url", request.getRequestURI());
		 response.sendRedirect("/home/login");
		 return false;
	 }
	 return true;
	
}
}
