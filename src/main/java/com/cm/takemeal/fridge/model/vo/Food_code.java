package com.cm.takemeal.fridge.model.vo;

import java.util.Date;

public class Food_code implements java.io.Serializable{
	private static final long serialVersionUID = 1333L;


	private String class_code;
	private String class_name;
	private String table_code;

		
	public Food_code() {
		// TODO Auto-generated constructor stub
	}


	public Food_code(String class_code, String class_name, String table_code) {
		super();
		this.class_code = class_code;
		this.class_name = class_name;
		this.table_code = table_code;
	}


	public String getClass_code() {
		return class_code;
	}


	public void setClass_code(String class_code) {
		this.class_code = class_code;
	}


	public String getClass_name() {
		return class_name;
	}


	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}


	public String gettable_code() {
		return table_code;
	}


	public void settable_code(String table_code) {
		this.table_code = table_code;
	}


	@Override
	public String toString() {
		return "Food_code [class_code=" + class_code + ", class_name=" + class_name + ", table_code=" + table_code
				+ "]";
	}
	
	
}
