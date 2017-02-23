package com.themobilestore.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ShippingAddress implements Serializable
{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    private int shipId;
    private String aptNo;
    private String streetName;
	private String city;
    private String State;
    private String country;
    private String zipcode;
    
    /*@OneToOne(mappedBy="shippingAddress")*/
    @OneToOne(mappedBy="shippingAddress", cascade=CascadeType.ALL, fetch = FetchType.EAGER)
    private Customer customer;
    
    public ShippingAddress() {
		// TODO Auto-generated constructor stub
	}
    public int getShipId() {
		return shipId;
	}
	
	public void setShipId(int shipId) {
		this.shipId = shipId;
	}
	public String getAptNo() {
		return aptNo;
	}
	public void setAptNo(String aptNo) {
		this.aptNo = aptNo;
	}
	public String getStreetName() {
		return streetName;
	}
	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
}

	
