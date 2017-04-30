package com.themobilestore.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.themobilestore.model.Category;
import com.themobilestore.model.Supplier;
import com.themobilestore.service.SupplierService;

@Controller
/*@RequestMapping("/admin")*/
public class SupplierController
{   
   @Autowired
	SupplierService sse;

	public SupplierController() {
		System.out.println("CREATING INSTANCE FOR SUPPLIERCONTROLLER");
	}
	
	
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
	
	@RequestMapping("/supplier/remove/{sid}")
	public String deleteSupplier(@PathVariable("sid") int sid, ModelMap model) throws Exception {

		try {
			sse.delete(sid);
			model.addAttribute("message", "Successfully deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
			return "redirect:/error";
		}
		return "redirect:/addSupplier";
	}
	
	@RequestMapping("/editSupplierForm/{sid}")
	public String editCategoryForm(@PathVariable int sid, Model model) {
		System.out.println("Supplier Id in Supplier Controller = " + sid);
				
		model.addAttribute("suppliercommand", sse.get(sid));
		System.out.println("Suuplier id in editSupplierForm = " + sid);
		model.addAttribute("supplierList", sse.getSuppliers());
		return "EditSupplierForm";
	}
	
	@RequestMapping(value="/editSupplier/{sid}", method=RequestMethod.POST)
	public String editCategoryDetails(@Valid @ModelAttribute("suppliercommand") Supplier supplier,  BindingResult result, @PathVariable("sid") int sid, Model model)
	{
		System.out.println("Supplier Id in edit supplier method is "+ supplier.getSid());
		
		if (result.hasErrors())
		{
			System.out.println(result.getFieldError());
			return "EditSupplierForm";
		}	
		sse.editSupplier(supplier);

		return "redirect:/addSupplier";
		
	}
	
}
