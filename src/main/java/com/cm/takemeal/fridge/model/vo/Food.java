package com.cm.takemeal.fridge.model.vo;

import java.util.Date;

public class Food implements java.io.Serializable{
	private static final long serialVersionUID = 133L;

	private String class_code;
	private int food_code;
	private String food_name;
	private String cool_sys;
	private Date expiry_date;
	
	public Food() {
		// TODO Auto-generated constructor stub
	}

	public Food(String class_code, int food_code, String food_name, String cool_sys, Date expiry_date) {
		super();
		this.class_code = class_code;
		this.food_code = food_code;
		this.food_name = food_name;
		this.cool_sys = cool_sys;
		this.expiry_date = expiry_date;
	}

	public String getClass_code() {
		return class_code;
	}

	public void setClass_code(String class_code) {
		this.class_code = class_code;
	}

	public int getFood_code() {
		return food_code;
	}

	public void setFood_code(int food_code) {
		this.food_code = food_code;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public String getCool_sys() {
		return cool_sys;
	}

	public void setCool_sys(String cool_sys) {
		this.cool_sys = cool_sys;
	}

	public Date getExpiry_date() {
		return expiry_date;
	}

	public void setExpiry_date(Date expiry_date) {
		this.expiry_date = expiry_date;
	}

	@Override
	public String toString() {
		return "Food [class_code=" + class_code + ", food_code=" + food_code + ", food_name=" + food_name
				+ ", cool_sys=" + cool_sys + ", expiry_date=" + expiry_date + "]";
	}

	
	
}
