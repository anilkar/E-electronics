package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class Homecontroller {


	 
	@RequestMapping("/")
	public ModelAndView showIndex() {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("index");
		
		return mv;
	}
	@RequestMapping("/log")
	public ModelAndView showLogin() {
		
 
		ModelAndView mv = new ModelAndView("Login");
		
		return mv;
	}
	
}
