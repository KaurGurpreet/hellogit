package com.themobilestore.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.themobilestore.model.Product;
import com.themobilestore.service.CategoryService;
import com.themobilestore.service.ProductService;
import com.themobilestore.service.SupplierService;

 @Controller
public class ProductController
{
  @Autowired
  private ProductService productService;
  
  @Autowired
  private CategoryService categoryService;
  
  @Autowired
	private SupplierService sse;
		
	public ProductController()
	{
		System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
	}

	@RequestMapping("/productform")
	public String getProductForm(Model model)
	{
		//Product product = new Product();
		model.addAttribute("product",new Product());
		model.addAttribute("categories",categoryService.getCategories());
		model.addAttribute("supplier",sse.list());
		return "ProductForm";
	}
	
	@RequestMapping("/addProduct")
	/*public ModelAndView saveProduct(@ModelAttribute(value="product") Product product)
	{
		Product newProduct=productService.saveProduct(product);
		//return new ModelAndView("productList","product",newProduct);*/
	
	public String saveProduct(@Valid @ModelAttribute("product") Product product,BindingResult result,Model model)
		{
		model.addAttribute("categories",categoryService.getCategories());
		model.addAttribute("supplier",sse.list());
		if(result.hasErrors())
			return "ProductForm";
		productService.saveProduct(product);
		return "index";
		}
	
	/*@RequestMapping("/productlist")
	public String getProductList(Model model)
		{
			model.addAttribute("Product", new Product());
			return "ProductForm";
		
		}*/

	
	@RequestMapping("/getAllProducts")
	public String getAllProducts(Model model){
		List<Product> products=productService.getAllProducts();
		//Assigning list of products to model attribute products
		model.addAttribute("productList",products);
		return "ProductList";
	}
}