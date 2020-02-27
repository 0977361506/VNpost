package edu.poly.spring.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.poly.spring.SerVice.CustomerSerVice;
import edu.poly.spring.model.Customer;

@Controller
public class CustomerManager {
	@Autowired
	CustomerSerVice dao;
	@Autowired
	ServletContext text;

	@RequestMapping("/admin/customer/index")
	public String index(Model model) {
		Customer entity = new Customer();
		List<Customer> list = (List<Customer>) dao.findAll();
		model.addAttribute("entity", entity);
		model.addAttribute("list", list);

		return "admin/customer/index";
	}

	@RequestMapping("/admin/customer/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Customer entity = dao.findById1(id.toString());
		List<Customer> list = (List<Customer>) dao.findAll();
		model.addAttribute("entity", entity);
		model.addAttribute("list", list);

		return "admin/customer/index";
	}

	@RequestMapping("/admin/customer/create")
	public String create(RedirectAttributes model, @ModelAttribute("entity") Customer customer,

			@RequestParam("photo_file") MultipartFile file) throws IllegalStateException, IOException {
		if (file.isEmpty()) {
			customer.setPhoto("vip112.jpg");
		} else {
			customer.setPhoto(file.getOriginalFilename());
			String pathString = text.getRealPath("/img/" + customer.getPhoto());
			file.transferTo(new File(pathString));
		}
		dao.save(customer);
		model.addAttribute("message", "Giao dich thanh coong");
		return "redirect:/admin/customer/index";
	}

	@RequestMapping("/admin/customer/update")
	public String update(RedirectAttributes model, @Validated @ModelAttribute("entity") Customer customer,
			BindingResult eror, @RequestParam(value = "id", required = false) String id1) {
		if (eror.hasErrors()) {
			model.addAttribute("message", "mat khau tu 6 ki tu tro len");
		} else {
			Customer customer2 = dao.findById1(customer.getId());
			System.out.println("entity" + customer.getFullname() + "sdt" + customer.getPassword());
			if (customer != null) {
				customer2.setFullname(customer.getFullname());
				dao.save(customer);
				model.addAttribute("message", "cap nhat thanh coong");
			}

		}

		return "redirect:/admin/customer/edit/" + customer.getId();
	}

	@RequestMapping(value = { "/admin/customer/delete", "/admin/customer/delete/{id}" })
	public String deString(RedirectAttributes model, @RequestParam(value = "id", required = false) String id1,
			@PathVariable(value = "id", required = false) String id2) {

		if (id1 != null) {

			dao.deleteById(id1);
		} else {

			dao.deleteById(id2);
		}
		model.addAttribute("message", "Xoa  thanh coong");
		return "redirect:/admin/customer/index";
	}
}