package com.themobilestore.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cid;
	private String categoryDetails;
	@OneToMany(mappedBy="category", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Product> products;
	
	public int getcid() {
		return cid;
	}
	public void setcid(int cid) {
		this.cid = cid;
	}
	public String getCategoryDetails() {
		return categoryDetails;
	}
	public void setCategoryDetails(String categoryDetails) {
		this.categoryDetails = categoryDetails;
	}
	
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	@Override
	public String toString() {
		return this.cid + " " + this.categoryDetails;
	}

}
