package edu.poly.spring.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Email;

import org.eclipse.jdt.internal.compiler.lookup.TypeConstants.DangerousMethod;
import org.hibernate.boot.jaxb.hbm.spi.TableInformationContainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import edu.poly.spring.Gmail.mailsend;
import edu.poly.spring.SerVice.CookieService;
import edu.poly.spring.SerVice.CustomerSerVice;
import edu.poly.spring.model.Customer;
import javassist.expr.NewArray;

@Controller
public class LoginController {
	@Autowired
	HttpSession session;
	@Autowired
	CustomerSerVice cus;
	@Autowired
	CookieService cooki;
	@Autowired
	ServletContext du;
	@Autowired
	mailsend ma;

	@RequestMapping("/home/index")
	public String home() {
		return "index";
	}

	@RequestMapping("/home/login")
	public String login() {

		return "login";
	}

	// mat khau
	@GetMapping("/account/register")
	public String quenmk(Model model) {
		Customer customer = new Customer();
		model.addAttribute("lam", customer);
		return "register";
	}

	@PostMapping("/account/register")
	public String quenmk(Model model, @Validated @ModelAttribute("lam") Customer customer, BindingResult eror,
			@RequestParam("photo_file") MultipartFile file) throws IllegalStateException, IOException {

		if (eror.hasErrors()) {
			model.addAttribute("error", "nhap dau du thong tin");
			return "register";
		} else {
			String idS = customer.getId();
			Customer customer2 = cus.findById1(idS);
			if (customer2 != null) {
				model.addAttribute("error", "Tai khoan Da ton tai");
			}
		}
		if (file.isEmpty()) {
			customer.setPhoto("user.png");
		} else {
			String roadString = du.getRealPath("/img");
			File file2 = new File(roadString, file.getOriginalFilename());
			file.transferTo(file2);
			customer.setPhoto(file2.getName());
			System.out.println("ten duogn dan" + roadString);
			System.out.println("ten file goc" + file.getOriginalFilename());
			System.out.println("ten file moi" + file2.getName());
		}

		customer.setActivated(false);
		customer.setAdmin(false);
		model.addAttribute("mess", "dang ki tai khoan thanh cong");
		cus.save(customer);
		return "register";
	}

	// login
	@GetMapping("/login/home")
	public String login(Model model) {

		return "login";
	}

	@PostMapping("/login/home")
	public String login(Model model, @RequestParam("id") String id, @RequestParam("pw") String pw,
			@RequestParam(value = "rm", defaultValue = "false") boolean rm) {

		if (!id.equals("") && !pw.equals("")) {
			Customer customer = cus.findById1(id);

			if (customer != null) {
				if (!customer.getPassword().equals(pw)) {
					model.addAttribute("mes", "vui long kiem tra  laij password");
					return "login";

				} else if (customer.getActivated() == false) {
					model.addAttribute("mes", "vui long kich hoat tai khoan");
					return "login";
				} else if (customer.getAdmin() == false) {
					model.addAttribute("mes", "ban ko phai la admin");
					return "login";
				}

			} else {
				model.addAttribute("mes", "kiểm tra lại thông tin đăng nhập");
			}
			model.addAttribute("entity", customer);

		}

		return "admin/customer/index";
	}
	// lay lai mat khau

	@RequestMapping("/login/email")
	public String forget() {
		return "Laylaimk";
	}

	@RequestMapping("/forget/pass")
	public String repass(Model model, @RequestParam("id") String id, @RequestParam("mail") String mail)
			throws MessagingException {

		if (!id.equals("")) {
			Customer customer = cus.findById1(id);
			if (cus != null) {
				if (mail.equals("")) {
					model.addAttribute("mes1", "vui long nhap day du thong tin ten email");
				} else {
					if (!mail.equals(customer.getEmail()))
						model.addAttribute("mes1", "ten gmail dang ki khong trung khop vui long kiem tra lại");
					else if (mail.equals(customer.getEmail())) {
						String subject = "mat khau cua ban la" + customer.getPassword();
						String content = "Lây Lại Thông Tin Mật Khẩu";
						ma.send(customer.getEmail(), "lethehieu151098@gmail.com", content, subject);
						model.addAttribute("mes1", "lay lại mật khẩu thành công");
						return "riderect:/login/email";
					}
				}
			}
		}

		return "Laylaimk";
	}

}
