package com.cm.takemeal.recipe.model.vo;

public class Recipe {

	private int no;
	private String userid;
	private String subject;
	private String contents;
	private String thumbnail;
	private int time;
	private int follow;
	private int hit;
	private int kcal;
	
	
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
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getFollow() {
		return follow;
	}
	public void setFollow(int follow) {
		this.follow = follow;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	
	@Override
	public String toString() {
		return "Recipe [no=" + no + ", userid=" + userid + ", subject=" + subject + ", contents=" + contents
				+ ", thumbnail=" + thumbnail + ", time=" + time + ", follow=" + follow + ", hit=" + hit + ", kcal="
				+ kcal + ", getNo()=" + getNo() + ", getUserid()=" + getUserid() + ", getSubject()=" + getSubject()
				+ ", getContents()=" + getContents() + ", getThumbnail()=" + getThumbnail() + ", getTime()=" + getTime()
				+ ", getFollow()=" + getFollow() + ", getHit()=" + getHit() + ", getKcal()=" + getKcal()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
}
