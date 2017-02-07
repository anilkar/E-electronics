package com.niit.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Category;

@Controller
public class CategoryController {
	 
	@Autowired(required=true)
	@Qualifier(value="categoryDAO")
	public void setCategoryDAO(CategoryDAO ps){
		this.categoryDAO = ps;
	}
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value = "/getAllCategories", method = RequestMethod.GET)
	public ModelAndView listCategories() {
		ModelAndView modelAndView = new ModelAndView("homeadmin");
		modelAndView.addObject("category", new Category());
		modelAndView.addObject("categoryList", this.categoryDAO.list());
		modelAndView.addObject("isCategoryClicked", true);
		return modelAndView;

}@RequestMapping("category/remove/{categoryId}")
public String removeCategory(@PathVariable("categoryId") String categoryId, ModelMap model) throws Exception {
	try {
		categoryDAO.delete(categoryId);
		model.addAttribute("message", "Successfully deleted");
	} catch (Exception e) {
		model.addAttribute("message", e.getMessage());
		e.printStackTrace();
	}
	
	return "redirect:/getAllCategories";
}


@RequestMapping(value = "/category/add", method = RequestMethod.POST)
public String addCategory(@ModelAttribute("category") Category category) {

	categoryDAO.saveorupdate(category);

	return "redirect:/getAllCategories";

}




@RequestMapping("category/edit/{categoryId}")
public String editCategory(@PathVariable("categoryId") String categoryId, Model model){
	System.out.println("editCategory");
    model.addAttribute("category", this.categoryDAO.get(categoryId));
    model.addAttribute("listCategorys", this.categoryDAO.list());
    model.addAttribute("isCategoryClicked", true);
    return "homeadmin";
}
}