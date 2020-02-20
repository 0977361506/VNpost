package edu.poly.spring.SerVice;

import java.util.Base64;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

@Service
public class CookieService {
	 @Autowired
	 HttpServletRequest request;
	 @Autowired
	 HttpServletResponse response;
   public Cookie creat(String nameString,String string,int day) {
	String vString =    Base64.getEncoder().encodeToString(nameString.getBytes());
	   Cookie cookie = new Cookie(vString,string);
	   cookie.setMaxAge(day);
	   cookie.setPath("/");
		response.addCookie(cookie);
		return cookie;
   }
   public Cookie read(String  name) {
	   Cookie[] cookies = request.getCookies();
	   for(Cookie c : cookies) {
		   if(c.getName().equals(name)) {
			   String tenString = new String(Base64.getDecoder().decode(c.getValue()));
			   c.setValue(tenString);
			   return c;
		   }
	   }
	   return null;
			   
   }
   public void delete(String name) {
	   this.creat(name,"", 0);
   }
}
