package com.themobilestore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.themobilestore.model.Product;
import com.themobilestore.service.ProductService;

@Controller
public class ProductController {

  @Autowired
  private ProductService productService;
		
	public ProductController(){
		System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
	}

	//http://localhost:8080/project1/admin/product/productform
	@RequestMapping("/productform")
	public String getProductForm(Model model){
		//Product product = new Product();
		model.addAttribute("product",new Product());
		return "ProductForm";
	}
	
	@RequestMapping("/addProduct")
	public ModelAndView saveProduct(@ModelAttribute(value="product") Product product)
	{
		Product newProduct=productService.saveProduct(product);
	//NOT A FINAL VERSION.. 
		return new ModelAndView("productList","product",newProduct);
		
	}
	
	
	
/*@RequestMapping("/productlist")
public String getProductList(Model model)
	{
		model.addAttribute("Product", new Product());
		return "productform";
	
	}*/

}