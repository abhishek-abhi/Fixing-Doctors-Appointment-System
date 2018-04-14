package io.github.abhishekabhi.Controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {

	@RequestMapping("/book")
	public String bookPage() {
		return "book";
	}
}
