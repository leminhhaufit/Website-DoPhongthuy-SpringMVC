package app.baitapnhom.phongthuy;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import app.baitapnhom.config.AuthenticationSystem;
import app.baitapnhom.config.IManageUser;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {

	@Autowired
	private IManageUser iManagerUser;

	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 * home(Locale locale, Model model) { System.out.println("hihihi");
	 * System.out.println(iManagerUser.hihi());
	 * 
	 * return "home"; }
	 */

	@GetMapping("/showMyLoginPage")
	public final String root() {
		if (!AuthenticationSystem.isUserLoggedIn())
			return "login-page"; // or some logic
		// some logic
		return "thanhtoan";
	}

	@GetMapping("/thanhtoan")
	public String thanhtoanPage() {
		// System.out.println(principal.getName() + " givaytroi");
		return "thanhtoan";
	}

	@GetMapping("/thanhtoan/ok")
	public String ketQuaPage() {
		return "thanhtoan";
	}

	@GetMapping("/fail")
	public String ketQuaPage1() {
		return "fail";
	}

}
