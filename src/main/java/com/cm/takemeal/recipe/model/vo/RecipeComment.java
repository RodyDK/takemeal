package com.cm.takemeal.recipe.model.vo;

import java.sql.Date;

public class RecipeComment {

	private int no;
	private String contents;
	private String writer;
	private Date reg_date;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	@Override
	public String toString() {
		return "Recipe_Comment [no=" + no + ", contents=" + contents + ", writer=" + writer + ", reg_date=" + reg_date
				+ ", getNo()=" + getNo() + ", getContents()=" + getContents() + ", getWriter()=" + getWriter()
				+ ", getReg_date()=" + getReg_date() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
}
