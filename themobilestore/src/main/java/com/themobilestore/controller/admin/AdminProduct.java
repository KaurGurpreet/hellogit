package com.themobilestore.controller.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.themobilestore.model.Category;
import com.themobilestore.model.Product;
import com.themobilestore.model.Supplier;
import com.themobilestore.service.CategoryService;
import com.themobilestore.service.ProductService;
import com.themobilestore.service.SupplierService;

@Controller
@RequestMapping("/admin")
public class AdminProduct {
	
	@Autowired
    private ProductService productService;
	
	@Autowired
	private CategoryService cse;

	@Autowired
	private SupplierService sse;
	
	@RequestMapping("/productform")
	public String getProductForm(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("categoryList", cse.getCategories());
		model.addAttribute("supplierList", sse.getSuppliers());
		return "ProductForm";
	}
	
	   @ModelAttribute("productCommand")
		public Product newProduct()
	{
			return new Product();
			
	}
	      
	
	@RequestMapping("/addProduct")
	public String saveProduct(@Valid @ModelAttribute("productCommand") Product product, BindingResult result, Model model)
	{
	 
		model.addAttribute(cse.getCategories());
		model.addAttribute(sse.getSuppliers());
		if (result.hasErrors())
			return "ProductForm";
		productService.saveProduct(product);
		

		MultipartFile prodImage = product.getImage();
		if (!prodImage.isEmpty())
		{
			Path paths = 
				Paths.get("C:/Users/gurpr_000/git/hellogit/themobilestore/src/main/webapp/WEB-INF/resources/images/" + product.getPid() + ".jpg");
			try
			{
				prodImage.transferTo(new File(paths.toString()));
			} 
			catch (IllegalStateException e)
			{
				e.printStackTrace();
			} 
			catch (IOException e)
			{
				e.printStackTrace();
			}
		}

		/*return "redirect:/getAllProducts";*/
		
		return "redirect:/admin/productInventory";
	}
	
	@RequestMapping("/deleteproduct/{pid}")
	public String deleteProduct(@PathVariable int pid)
	{
		System.out.println("Product Id Controller = "+pid);
		productService.deleteProduct(pid);
		/*return "redirect:/getAllProducts";*/
		
		return "redirect:/admin/productInventory";
	}

	/**
	 * to display the form to edit product details
	 */
	
	@RequestMapping("/editform/{pid}")
	public String editProductForm(@PathVariable int pid, Model model) {
		System.out.println("Product Id Controller = "+pid);
		/*Product product = productService.getProductById(pid);*/
		/*System.out.println("Product called after service  = "+ product.getPid());*/
		model.addAttribute("productCommand", productService.getProductById(pid));
		System.out.println("Product id in editform" +pid);
		/*model.addAttribute("product",productService.getProductById(pid));*/
		model.addAttribute("categoryList", cse.getCategories());
		model.addAttribute("supplierList", sse.getSuppliers());
		model.addAttribute("productList", productService.getAllProducts());
		return "EditProductForm";
	}
	
	
	/*@RequestMapping(value="/editProduct", method=RequestMethod.POST)
	public String editProductDetails(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model, HttpServletRequest request)
	{
		
		if (result.hasErrors())
		{
			System.out.println(result.getFieldError());
			return "EditProductForm";
		}
		
		System.out.println("Product Id in edit product method is "+product.getPid());
		
		model.addAttribute("product1", productService.getProductById(pid));
		model.addAttribute("categoryList", cse.getCategories());
		model.addAttribute("supplierList", sse.getSuppliers());
		 
		Category category = cse.getByName(product.getCategory().getCname());
		product.setCategory(category);
		Supplier supplier = sse.getByName(product.getSupplier().getSupname());
		product.setSupplier(supplier);
		
		System.out.println("Product Id in edit product method after is "+product.getPid());
	    productService.saveProduct(product);
		
		MultipartFile prodImage = product.getImage();
		if (!prodImage.isEmpty())
		{
			Path paths = 
				Paths.get("C:/Users/gurpr_000/git/hellogit/themobilestore/src/main/webapp/WEB-INF/resources/images/" + product.getPid() + ".jpg");
			try
			{
				prodImage.transferTo(new File(paths.toString()));
			} 
			catch (IllegalStateException e)
			{
				e.printStackTrace();
			} catch (IOException e)
			{
				e.printStackTrace();
			}
		}
		productService.updateProduct(product);

		model.addAttribute(cse.getCategories());
		model.addAttribute(sse.getSuppliers());
		if (result.hasErrors())
			return "EditProductForm";
		productService.editProduct(product);
		

		MultipartFile prodImage = product.getImage();
		if (!prodImage.isEmpty())
		{
			Path paths = 
				Paths.get("C:/Users/gurpr_000/git/hellogit/themobilestore/src/main/webapp/WEB-INF/resources/images/" + product.getPid() + ".jpg");
			try
			{
				prodImage.transferTo(new File(paths.toString()));
			} 
			catch (IllegalStateException e)
			{
				e.printStackTrace();
			} 
			catch (IOException e)
			{
				e.printStackTrace();
			}

		return "redirect:/getAllProducts";
	}
	
}*/
	
	
	@RequestMapping("/editProduct/{pid }")
	public String editProductDetails(@Valid @ModelAttribute("productCommand") Product product, BindingResult result, HttpServletRequest request)
	{
		
		if (result.hasErrors())
		{
			System.out.println(result.getFieldError());
			return "EditProductForm";
		}
		
		/*model.addAttribute("productList", productService.getAllProducts());
		model.addAttribute("categoryList", cse.getCategories());
		model.addAttribute("supplierList", sse.getSuppliers());*/
		
		Category category = cse.getByName(product.getCategory().getCname());
		product.setCategory(category);
		Supplier supplier = sse.getByName(product.getSupplier().getSupname());
		product.setSupplier(supplier);
		
		System.out.println("Product Id in edit product method is "+product.getPid());

		MultipartFile prodImage = product.getImage();
		if (!prodImage.isEmpty())
		{
			Path paths = 
				Paths.get("C:/Users/gurpr_000/git/hellogit/themobilestore/src/main/webapp/WEB-INF/resources/images/" + product.getPid() + ".jpg");
			try
			{
				prodImage.transferTo(new File(paths.toString()));
			} 
			catch (IllegalStateException e)
			{
				e.printStackTrace();
			} catch (IOException e)
			{
				e.printStackTrace();
			}
		}
		
        productService.editProduct(product);
		/*return "redirect:/getAllProducts";*/
        
        return "redirect:/admin/productInventory";
	}

}
