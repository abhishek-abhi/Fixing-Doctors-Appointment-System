package io.github.abhishekabhi.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProcessController {

	@RequestMapping("/process")
	public String processPage() {
		return "process";
	}
}
