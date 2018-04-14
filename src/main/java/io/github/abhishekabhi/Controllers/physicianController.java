package io.github.abhishekabhi.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class physicianController {

	@RequestMapping("/physician")
	public String physicianPage() {
		return "physician";
	}
}
