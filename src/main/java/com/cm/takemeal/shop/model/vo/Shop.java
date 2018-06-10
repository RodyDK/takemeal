package com.cm.takemeal.shop.model.vo;

import java.sql.Date;

public class Shop {

	private int no;
	private String name;
	private int price;
	private int qty;
	private String description;
	private String contents;
	private Date reg_date;
	private String thumbnail;
	private String company;
	private String country;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Override
	public String toString() {
		return "Shop [no=" + no + ", name=" + name + ", price=" + price + ", qty=" + qty + ", description="
				+ description + ", contents=" + contents + ", reg_date=" + reg_date + ", thumbnail=" + thumbnail
				+ ", company=" + company + ", country=" + country + ", getNo()=" + getNo() + ", getName()=" + getName()
				+ ", getPrice()=" + getPrice() + ", getQty()=" + getQty() + ", getDescription()=" + getDescription()
				+ ", getContents()=" + getContents() + ", getReg_date()=" + getReg_date() + ", getThumbnail()="
				+ getThumbnail() + ", getCompany()=" + getCompany() + ", getCountry()=" + getCountry() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
}
