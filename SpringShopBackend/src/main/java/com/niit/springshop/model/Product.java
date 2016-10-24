package com.niit.springshop.model;



import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity 
@Table
@Component
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	private int price ;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cat_id")
	private Category productcategory;
	@ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="sup_id")
	private Supplier productsupplier;
	

	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Category getProductcategory() {
		return productcategory;
	}



	public void setProductcategory(Category productcategory) {
		this.productcategory = productcategory;
	}



	
	public Supplier getProductsupplier() {
		return productsupplier;
	}



	public void setProductsupplier(Supplier productsupplier) {
		this.productsupplier = productsupplier;
	}




	@Transient
	 private MultipartFile file;





	public MultipartFile getFile() {
		return file;
	}



	public void setFile(MultipartFile file) {
		this.file = file;
	}





	




	
	
}
