package com.themobilestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.themobilestore.Product;

@Controller
public class ProductController {

@RequestMapping("/productlist")
public String getProductList(Model model)
	{
		model.addAttribute("Product", new Product());
		return "productform";
	
	}

}