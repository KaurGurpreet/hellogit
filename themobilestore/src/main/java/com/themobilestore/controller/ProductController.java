package com.themobilestore.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
  private CategoryService cse;
  
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
		model.addAttribute("category",cse.getCategories());
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
		model.addAttribute("category",cse.getCategories());
		model.addAttribute("supplier",sse.list());
		if(result.hasErrors())
			return "ProductForm";
		productService.saveProduct(product);
		return "redirect:/getAllProducts";
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
	
	@RequestMapping("/viewproduct/{pid}")
	public String viewProduct(@PathVariable int pid,Model model){
		Product product=productService.getProductById(pid);
		model.addAttribute("product",product);
	/*return "ViewProduct";*/
		return "ProductList";
	}

	@RequestMapping("/deleteproduct/{pid}")
	public String deleteProduct(@PathVariable int pid){
		productService.deleteProduct(pid);
		return "redirect:getAllProducts";
	}


	/**
	 *    to display the form to edit product details
	 */
	@RequestMapping("/editform/{pid}")
	public String editProductForm(@PathVariable int pid,Model model)
	{
		Product product=productService.getProductById(pid);
		model.addAttribute("product",product);
		model.addAttribute("category",cse.getCategories());
		return "EditProductForm";
	}
	@RequestMapping("/editProduct")
	public String editProductDetails(@Valid @ModelAttribute("product") Product product,
			BindingResult result){
		if(result.hasErrors())
			return "productform";
		productService.updateProduct(product);
		return "redirect:getAllProducts";
	}
	
}