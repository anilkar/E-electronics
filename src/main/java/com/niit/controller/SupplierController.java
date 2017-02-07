package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.model.Supplier;
@Controller
public class SupplierController {

	@Autowired(required=true)
	@Qualifier(value="supplierDAO")
	public void setsupplierDAO(SupplierDAO ps){
		this.supplierDAO = ps;
	}
	private SupplierDAO supplierDAO;
	
	@RequestMapping(value = "/getAllCategories", method = RequestMethod.GET)
	public ModelAndView listCategories() {
		ModelAndView modelAndView = new ModelAndView("homeadmin");
		modelAndView.addObject("supplier", new Supplier());
		modelAndView.addObject("supplierList", this.supplierDAO.list());
		modelAndView.addObject("issupplierClicked", true);
		return modelAndView;

}@RequestMapping("supplier/remove/{supplierId}")
public String removesupplier(@PathVariable("supplierId") String supplierId, ModelMap model) throws Exception {
	try {
		SupplierDAO.delete(supplierId);
		model.addAttribute("message", "Successfully deleted");
	} catch (Exception e) {
		model.addAttribute("message", e.getMessage());
		e.printStackTrace();
	}
	
	return "redirect:/getAllCategories";
}


@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
public String addsupplier(@ModelAttribute("supplier") Supplier supplier) {

	SupplierDAO.saveorupdate(supplier);

	return "redirect:/getAllCategories";

}


}
