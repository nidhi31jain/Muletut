package com.muletut;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MuletutController {
	@RequestMapping("/hello.html")
	public String helloWorld(ModelMap model) {
		String message = "HELLO SPRING MVC HOW R U";
		model.addAttribute("message", message);
		return "hellopage";
	}
}
