package io.github.abhishekabhi.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class slotController {

	@RequestMapping("/slot")
	public String slotPage() {
		return "slot";
	}
}
