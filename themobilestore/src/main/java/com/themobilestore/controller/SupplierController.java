package com.themobilestore.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.themobilestore.model.Supplier;
import com.themobilestore.service.SupplierService;

@Controller
public class SupplierController
{   
   @Autowired
	SupplierService sse;

	public SupplierController() {
		System.out.println("CREATING INSTANCE FOR SUPPLIERCONTROLLER");
	}
	
	/*@RequestMapping(value = "/addSupplier", method = RequestMethod.GET)
	public ModelAndView list() {
		List<Supplier> list = sse.list();
		return new ModelAndView("supplier", "Supplier", list);
	}*/
	
	@RequestMapping("/addSupplier")
	public String getSupplier(Model model) 
	{
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", sse.getSuppliers());
		return "Supplier";
	}
	
	@ModelAttribute("suppliercommand")
	public Supplier newSupplier()
	{
		return new Supplier();
	}

	@RequestMapping("/supplier/add")
	public String addSupplier(@Valid @ModelAttribute("suppliercommand") Supplier supplier, BindingResult result) {

		if (result.hasErrors()) 
		{
			return "addSupplier";
		}
		
		System.out.println(supplier.getSid());
		
		sse.saveOrUpdate(supplier);

		return "redirect:/addSupplier";
	}
	
	/*@RequestMapping("/getAllProducts")
	public String getAllProducts(Model model){
		List<Product> products=productService.getAllProducts();
		//Assigning list of products to model attribute products
		model.addAttribute("productList",products);
		return "ProductList";*/
}
