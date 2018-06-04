package com.cm.takemeal.notice.model.vo;

import java.sql.Date;

public class Notice {

	private int no;
	private String userid;
	private String subject;
	private String contents;
	private int hit;
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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "Notice [no=" + no + ", userid=" + userid + ", subject=" + subject + ", contents=" + contents + ", hit="
				+ hit + ", reg_date=" + reg_date + ", getNo()=" + getNo() + ", getUserid()=" + getUserid()
				+ ", getSubject()=" + getSubject() + ", getContents()=" + getContents() + ", getHit()=" + getHit()
				+ ", getReg_date()=" + getReg_date() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

}
