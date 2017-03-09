package com.themobilestore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.themobilestore.model.Cart;
import com.themobilestore.model.CartItem;
import com.themobilestore.model.Customer;
import com.themobilestore.model.Product;
import com.themobilestore.service.CartItemService;
import com.themobilestore.service.CartService;
import com.themobilestore.service.CustomerService;
import com.themobilestore.service.ProductService;

@Controller
public class CartItemController
{
    @Autowired
	private CartItemService cartItemService;
	@Autowired
	private CustomerService custService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/{cart_id}")
	public @ResponseBody Cart getCart(@PathVariable(value = "cart_id")int cart_id){
		return cartService.getCart(cart_id);
	}

	@RequestMapping(value="/addCartItem/{productId}",method=RequestMethod.PUT)
	@ResponseStatus(value=HttpStatus.NO_CONTENT	)
	public void addCartItem(@PathVariable(value="productId")int productId)
	{
		User user= (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		Customer customer=custService.getCustomerByUsername(username);//from Users where username=?
		Cart cart =customer.getCart();
		List<CartItem> cartItems= cart.getCartItems();
		
		Product  product = productService.getProductById(productId);
		
		for (int i = 0; i <cartItems.size(); i++) 
		{
			CartItem cartItem=cartItems.get(i);
			Product p=cartItem.getProduct();
			     //1    ==  1
			if(p.getPid()==productId){
				cartItem.setQuantity(cartItem.getQuantity() + 1);//increment the quantity
				cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice()); //update the total price
				cartItemService.addCartItem(cartItem);//update the quantity in the cartitem
				return;
			}	
		}
		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(product.getPrice()*cartItem.getQuantity());
		cartItem.setCart(cart);
		cartItemService.addCartItem(cartItem);
	}
}
