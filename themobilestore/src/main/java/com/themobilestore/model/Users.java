package com.themobilestore.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Users
{
   @Id
   @GeneratedValue(strategy=GenerationType.AUTO)
	private int userid;
   
   @NotEmpty(message="Please enter username")
   @Column(unique=true)
	private String username;
   @NotEmpty(message="Please enter password")
	private String password;
	private boolean enabled;
	
	/*@OneToOne(mappedBy="users", cascade=CascadeType.ALL, fetch = FetchType.EAGER)
	@OneToOne(mappedBy="users", cascade=CascadeType.ALL)*/
	/*@OneToOne(mappedBy="users")*/
	private Customer customer;
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
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
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	
}
