package com.themobilestore.model;

public class Product
{
       private String pid;
	   private String name;
	   private double price;
	   private int quantity;
	   private String description;
	   
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQty(int quantity) {
		this.quantity = quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDesc(String description) {
		this.description = description;
	}
	   
	
}
