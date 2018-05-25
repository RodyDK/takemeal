package com.cm.takemeal.noticeboard.model.vo;

import java.sql.Date;

public class BoardVo {

	
	 private Integer bno;
	 private String title;
	 private String content;
	 private String writet;
	 private Date regdate;
	 private int viewcnt;
	 
	 public BoardVo() {
		// TODO Auto-generated constructor stub
	}

	public BoardVo(Integer bno, String title, String content, String writet, Date regdate, int viewcnt) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writet = writet;
		this.regdate = regdate;
		this.viewcnt = viewcnt;
	}

	public Integer getBno() {
		return bno;
	}

	public void setBno(Integer bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWritet() {
		return writet;
	}

	public void setWritet(String writet) {
		this.writet = writet;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	@Override
	public String toString() {
		return "BoardVo [bno=" + bno + ", title=" + title + ", content=" + content + ", writet=" + writet + ", viewcnt="
				+ viewcnt + "]";
	}
	 
	 
}
