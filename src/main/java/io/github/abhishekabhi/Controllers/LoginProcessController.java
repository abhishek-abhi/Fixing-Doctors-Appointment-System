package io.github.abhishekabhi.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginProcessController {

	@RequestMapping("/login_process")
	public String loginProcessPage() {
		return "login_process";
	}
}
