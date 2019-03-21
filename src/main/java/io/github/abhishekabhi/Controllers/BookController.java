package io.github.abhishekabhi.Controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//This is BookController for project that is Spring

@Controller
public class BookController {

	@RequestMapping("/book")
	public String bookPage() {
		return "book";
	}
}
