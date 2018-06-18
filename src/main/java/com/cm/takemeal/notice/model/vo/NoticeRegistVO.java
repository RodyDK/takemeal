package com.cm.takemeal.notice.model.vo;

public class NoticeRegistVO {

	
	private String subject;
	private String contents;
	
	public NoticeRegistVO() {
		// TODO Auto-generated constructor stub
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

	public NoticeRegistVO(String subject, String contents) {
		super();
		this.subject = subject;
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "NoticeRegistVO [subject=" + subject + ", contents=" + contents + "]";
	}
	
	
	
	
}
