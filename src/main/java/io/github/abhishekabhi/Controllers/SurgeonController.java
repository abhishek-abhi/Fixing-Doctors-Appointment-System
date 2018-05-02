package io.github.abhishekabhi.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SurgeonController {

	@RequestMapping("/details")
	public String surgeonPage() {
		return "details";
	}
}
