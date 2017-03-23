package com.themobilestore.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Product implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
       private int pid;
	@NotEmpty(message="Product Name is mandatory")
	   private String name;
	@Min(value=10,message="Minimum value of price must be 10Rs")
	   private double price;
	
	@Min(value=1,message="minimum qantity must be 1")
	   private int quantity;
	   @NotEmpty(message="Description is mandatory")
	   private String description;
	   
	   @ManyToOne
	   @JoinColumn(name="cid")
	   @JsonIgnore
	   /*@NotNull(message="Category is mandatory")*/
	   private Category category;
	   
	   @ManyToOne
	   @JoinColumn(name = "sid")
	   @JsonIgnore
	   /*@NotNull(message="Supplier is mandatory")*/
	    private Supplier supplier;
	   
	   @Transient 
	   private MultipartFile image;
	   
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
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
