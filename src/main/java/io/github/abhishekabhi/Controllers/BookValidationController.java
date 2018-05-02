package io.github.abhishekabhi.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookValidationController {

	@RequestMapping("/validate")
	public String validatorPage() {
		return "validate";
	}
}
