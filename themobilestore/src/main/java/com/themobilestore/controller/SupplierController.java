package com.themobilestore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping(value = "/addSupplier", method = RequestMethod.GET)
	public ModelAndView list() {
		List<Supplier> list = sse.list();
		return new ModelAndView("Supplier", "Supplier", list);
	}
	
	@ModelAttribute("suppliercommand")
	public Supplier newSupplier()
	{
		return new Supplier();
	}

	@RequestMapping(value = "/supplier/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("suppliercommand") Supplier s, BindingResult result) {

		if (result.hasErrors()) 
		{
			return "addSupplier";
		}
		
		System.out.println(s.getSid());
		
		sse.saveOrUpdate(s);

		return "redirect:/addSupplier";
	}
	
}
