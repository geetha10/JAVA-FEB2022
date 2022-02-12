package com.heidichen.webdemo.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@GetMapping("/jstl")
	public String jstl(Model model) {
		Integer age = 13;
		Boolean alive = true;
		model.addAttribute("petname", "Pepper");
		model.addAttribute("age", age);
		model.addAttribute("alive", alive);
		
		// LOOP
		ArrayList<String> pets = new ArrayList<>();
		pets.add("Pepper");
		pets.add("Charlie");
		pets.add("Gigi");
		pets.add("penny");
		pets.add("Lulo");
		model.addAttribute("pets", pets);
		
		for(String pet : pets) {
			System.out.println(pet);
		}
		
		
		return "jstl.jsp";
	}
}
