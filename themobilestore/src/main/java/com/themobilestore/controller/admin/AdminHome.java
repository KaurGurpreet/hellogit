package com.themobilestore.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.themobilestore.model.Customer;
import com.themobilestore.model.Product;
import com.themobilestore.service.CustomerService;
import com.themobilestore.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminHome 
{

    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model){
        List<Product> products = productService.getAllProducts();
        model.addAttribute("productList", products);

        return "productInventory";
    }

    @RequestMapping("/customer")
    public String customerManagerment(Model model){
       List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);

        return "customerManagement";
    }


}