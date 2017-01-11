package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class HomeController {


	 
	@RequestMapping("/")
	public ModelAndView showIndex() {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("index");
		
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView showLogin() {
		System.out.println("Login page");
 
		ModelAndView mv = new ModelAndView("login");
		
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView showRegister() {
		System.out.println("register page");
 
		ModelAndView mv = new ModelAndView("register");
		
		return mv;
	}
	@RequestMapping("/aboutus")
	public ModelAndView showAbout() {
		System.out.println("aboutus page");
 
		ModelAndView mv = new ModelAndView("aboutus");
		
		return mv;
	}
	
	
	@RequestMapping("/contact")
	public ModelAndView showContact() {
		System.out.println("contact page");
 
		ModelAndView mv = new ModelAndView("contact");
		
		return mv;
	}
	@RequestMapping("/services")
	public ModelAndView showServices() {
		System.out.println("services page");
 
		ModelAndView mv = new ModelAndView("services");
		
		return mv;
}
	@RequestMapping("/products")
	public ModelAndView showproducts() {
		System.out.println("products page");
 
		ModelAndView mv = new ModelAndView("products");
		
		return mv;
}
}