package edu.poly.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import edu.poly.spring.intershapter.Sericury;






@Configuration
public class InterceptorConfig implements  WebMvcConfigurer{


	@Autowired
	Sericury sem;
  @Override
public void addInterceptors(InterceptorRegistry registry) {
	
	registry.addInterceptor(sem).addPathPatterns("/admin/customer/index");
}
}
