package io.github.abhishekabhi.Controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// This is important too

// Book Controller

// This is new controller
@Controller
public class BookController {

	@RequestMapping("/book")
	public String bookPage() {
		return "book";
	}
}
