package com.cm.takemeal.chef.model.vo;

public class Chef {

	private int no;
	private String userid;
	private String username;
	private String type;
	private String phone;
	private String blog;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBlog() {
		return blog;
	}
	public void setBlog(String blog) {
		this.blog = blog;
	}
	
	
	@Override
	public String toString() {
		return "Chef [no=" + no + ", userid=" + userid + ", username=" + username + ", type=" + type + ", phone="
				+ phone + ", blog=" + blog + ", getNo()=" + getNo() + ", getUserid()=" + getUserid()
				+ ", getUsername()=" + getUsername() + ", getType()=" + getType() + ", getPhone()=" + getPhone()
				+ ", getBlog()=" + getBlog() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}
