package com.cm.takemeal.noticeboard.model.vo;

import java.util.Date;

public class ReplyVo implements java.io.Serializable{
	private static final long serialVersionUID = 54234L;
	
	private Integer rno;
	private Integer bno;
	private String replytext;
	private String replyer;
	
	private Date regdate;
	private Date updatedate;
	
	public ReplyVo() {
		// TODO Auto-generated constructor stub
	}
	
	


	public Integer  getRno() {
		return rno;
	}


	public void setRno(Integer  rno) {
		this.rno = rno;
	}


	public Integer  getBno() {
		return bno;
	}


	public void setBno(Integer  bno) {
		this.bno = bno;
	}


	public String getReplytext() {
		return replytext;
	}


	public void setReplytext(String replytext) {
		this.replytext = replytext;
	}


	public String getReplyer() {
		return replyer;
	}


	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}


	public Date getRegdate() {
		return regdate;
	}


	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}


	public Date getUpdatedate() {
		return updatedate;
	}


	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}


	@Override
	public String toString() {
		return "ReplyVo [rno=" + rno + ", bno=" + bno + ", replytext=" + replytext + ", replyer=" + replyer
				+ ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
	

}
