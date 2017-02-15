package com.themobilestore.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Product
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
       private int pid;
	@NotEmpty(message="Product Name is mandatory")
	   private String name;
	@Min(value=10)
	   private double price;
	
	@Min(value=1)
	   private int quantity;
	   @NotEmpty(message="Description is mandatory")
	   private String description;
	   
	   @ManyToOne
	   @JoinColumn(name="cid")
	   @JsonIgnore
	   private Category category;
	   
	   @ManyToOne
	   @JoinColumn(name = "sid")
	   @JsonIgnore
	    private Supplier supplier;
	   
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
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
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	  
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	
}
