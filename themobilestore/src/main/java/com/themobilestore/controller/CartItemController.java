package com.themobilestore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
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
import com.themobilestore.model.Users;
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
	private CustomerService customerService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CartService cartService;
	
	/*@RequestMapping("/{id}")
    public @ResponseBody Cart getCartById(@PathVariable(value = "id") int cartId){
        return cartService.getCart(cartId);
    }*/
	
	/*@RequestMapping(value="/cart/addCartItem/{pid}",method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.NO_CONTENT	)
	public void addCartItem(@PathVariable(value="pid")int productId, @AuthenticationPrincipal Users activeUser)
	{
		//Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
		System.out.println(" username = "+activeUser.getUsername());
		User user=
	    (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		System.out.println(SecurityContextHolder.getContext().getAuthentication().getPrincipal());
		String username=user.getUsername();
		String username="gurpreet";
		Customer customer=customerService.getCustomerByUsername(activeUser.getUsername());//from Users where username=?
	    Cart cart =customer.getCart();
		Product  product = productService.getProductById(productId);
		List<CartItem> cartItems= cart.getCartItems();*/
	
	@RequestMapping(value="/cart/addCartItem/{pid}",method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value="pid") int productId){
	User user=
	(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();

	String username=user.getUsername();
	Customer customer=customerService.getCustomerByUsername(username);//from Users where username=?
	Cart cart=customer.getCart();
	List<CartItem> cartItems= cart.getCartItems();

	Product product = productService.getProductById(productId);
		
		for (int i = 0; i <cartItems.size(); i++) 
		{
			CartItem cartItem = cartItems.get(i);
			Product p = cartItem.getProduct();
			     //1    ==  1
			if(p.getPid()==productId){
				cartItem.setQuantity(cartItem.getQuantity() + 1);//increment the quantity
				cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice()); //update the total price
				cartItemService.addCartItem(cartItem);//update the quantity in the cartitem
				return;
			}	
		}
		
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(cartItem.getQuantity() * product.getPrice());
		cartItem.setProduct(product); //set product id
		cartItem.setCart(cart);//set cart id
		cartItemService.addCartItem(cartItem); //insert query
		
	}
	
	@RequestMapping("/cart/removeCartItem/{cartItemId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable int cartItemId){
	CartItem cartItem=cartItemService.getCartItem(cartItemId);
	cartItemService.removeCartItem(cartItem);
	}
	@RequestMapping("/cart/removeAllCartItems/{cartId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable int cartId){
	Cart cart=cartService.getCart(cartId);
	cartItemService.removeAllCartItems(cart);
	}
}
