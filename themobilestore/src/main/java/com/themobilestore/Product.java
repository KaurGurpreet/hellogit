package com.themobilestore;

public class Product 
{
       private String pid;
	   private String name;
	   private String price;
	   private String path;
	  // private String link;
	   
	public String getPid() 
	   {
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path; 
	}
	
	/*public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}*/
	
	
}
