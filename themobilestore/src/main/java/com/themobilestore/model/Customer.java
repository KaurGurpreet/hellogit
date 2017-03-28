package com.themobilestore.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer implements Serializable
{
   @Id
   @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
   @NotEmpty(message="Please enter firstname")
   
	private String firstname;
   @NotEmpty(message="Please enter lastname")
	private String lastname;
   
   @NotEmpty(message="Please enter email")
   @Email(message="Please enter valid email address")
	private String email;
   
   @NotEmpty(message="Please enter phone number")
   @Length(max=10,min=10)
	private String phonenumber;
   
   /*@NotEmpty(message="Please enter username")
   @Column(unique=true)
	private String username;
   @NotEmpty(message="Please enter password")
   	private String password;*/
	
	/*@OneToOne
	@JoinColumn(name="userid")
	private Users users;*/
   
	/*@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="bid")
	private BillingAddress billingAddress;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shipId")
	private ShippingAddress shippingAddress;*/
	
   @OneToOne(cascade=CascadeType.ALL)
   @JoinColumn(name="id")
   private Users users;
	
   @OneToOne(cascade=CascadeType.ALL)
   @JoinColumn(name="id")
   private BillingAddress billingAddress;

   @OneToOne(cascade=CascadeType.ALL)
   @JoinColumn(name="id")
   private ShippingAddress shippingAddress;
   
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="id")
	private Cart cart;
		
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	/*public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}*/

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}	
		
	
}
