package app.baitapnhom.phongthuy;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.baitapnhom.entities.KhachHang;
import app.baitapnhom.entities.TaiKhoan;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "login";
	}
	
	@GetMapping("/dangky")
	public String dangKyTaiKhoan(Model model) {
		KhachHang khachhang = new KhachHang();
		model.addAttribute("khachhang", khachhang);
		return "register";
	}
	
	@GetMapping("/test")
	public String test(Model model) {
		
		return "info";
	}
	
	@Autowired
	private SessionRegistry sessionRegistry;
	@GetMapping("/testabcd")
	public String adminss() {
		final List<Object> allPrincipals = sessionRegistry.getAllPrincipals();

        for(final Object principal : allPrincipals) {
            if(principal instanceof User) {
                // Do something with user
                System.out.println(((User) principal).getUsername());
            }
        }
		return "";
	}
	
	
	
	
	
}
