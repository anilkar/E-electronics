package com.niit.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;


@Controller
public class AdminController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private  ProductDAO productDAO;
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("/adminhome")
    public ModelAndView showhome()
	{
		System.out.println("admin home page");
    ModelAndView mv=new ModelAndView("adminhome");
    mv.addObject("isAdminhome","true");
        return mv;
    }
	@RequestMapping(value = "/getAllCategories", method = RequestMethod.GET)
	public ModelAndView listCategories() {
		ModelAndView modelAndView = new ModelAndView("adminhome");
		modelAndView.addObject("category", new Category());
		modelAndView.addObject("categoryList", this.categoryDAO.list());
		modelAndView.addObject("isCategoryClicked", true);
		return modelAndView;
	}
	@RequestMapping(value="/getAllSuplliers", method=RequestMethod.GET)
	public ModelAndView listSuppliers()
	{
		ModelAndView modelAndView=new ModelAndView("adminhome");
		modelAndView.addObject("supplier", new Supplier());
		//modelAndView.addObject("supplierList", this.supplierDAO.list());
		modelAndView.addObject("isSupplierClicked", true);
		return modelAndView;
	}
	@RequestMapping(value = "/getAllProducts", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("isProductClicked", true);
		return "welcomeadmin";
	}

}
