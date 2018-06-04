package com.cm.takemeal.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("member")
public class Member implements java.io.Serializable{
	private static final long serialVersionUID = 1111L;
	
	//스프링이 자동으로 setter와 getter 가 작동되게 하려면
	//테이블의 컬럼명과 필드명을 동일하게 하면 됨
	private int no;
	private String userid;
	private String password;
	private String username;
	private int type;
	private String phone;
	private String blog;
	private Date reg_date;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
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
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "Member [no=" + no + ", userid=" + userid + ", password=" + password + ", username=" + username
				+ ", type=" + type + ", phone=" + phone + ", blog=" + blog + ", reg_date=" + reg_date + ", getNo()="
				+ getNo() + ", getUserid()=" + getUserid() + ", getPassword()=" + getPassword() + ", getUsername()="
				+ getUsername() + ", getType()=" + getType() + ", getPhone()=" + getPhone() + ", getBlog()=" + getBlog()
				+ ", getReg_date()=" + getReg_date() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}


	
}
