package io.github.abhishekabhi.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {

	
	/**
	 * @return indexPage
	 */
	@RequestMapping("/")
	public String indexPage() {
		return "index";
	}
}
