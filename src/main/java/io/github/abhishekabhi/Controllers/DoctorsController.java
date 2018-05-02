package io.github.abhishekabhi.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DoctorsController {
	
	  @RequestMapping("/doctors")
      public String doctorPage() {
    	  return "doctors";
      }
}
