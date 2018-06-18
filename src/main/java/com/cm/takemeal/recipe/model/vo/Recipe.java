package com.cm.takemeal.recipe.model.vo;

public class Recipe {

	private int no;
	private String userid;
	private String subject;
	private String contents;
	private String thumbnail1;
	private String thumbnail2;
	private String thumbnail3;
	private String thumbnail4;
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
	public String getThumbnail1() {
		return thumbnail1;
	}
	public void setThumbnail1(String thumbnail1) {
		this.thumbnail1 = thumbnail1;
	}
	public String getThumbnail2() {
		return thumbnail2;
	}
	public void setThumbnail2(String thumbnail2) {
		this.thumbnail2 = thumbnail2;
	}
	public String getThumbnail3() {
		return thumbnail3;
	}
	public void setThumbnail3(String thumbnail3) {
		this.thumbnail3 = thumbnail3;
	}
	public String getThumbnail4() {
		return thumbnail4;
	}
	public void setThumbnail4(String thumbnail4) {
		this.thumbnail4 = thumbnail4;
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
				+ ", thumbnail1=" + thumbnail1 + ", thumbnail2=" + thumbnail2 + ", thumbnail3=" + thumbnail3
				+ ", thumbnail4=" + thumbnail4 + ", time=" + time + ", follow=" + follow + ", hit=" + hit + ", kcal="
				+ kcal + ", getNo()=" + getNo() + ", getUserid()=" + getUserid() + ", getSubject()=" + getSubject()
				+ ", getContents()=" + getContents() + ", getThumbnail1()=" + getThumbnail1() + ", getThumbnail2()="
				+ getThumbnail2() + ", getThumbnail3()=" + getThumbnail3() + ", getThumbnail4()=" + getThumbnail4()
				+ ", getTime()=" + getTime() + ", getFollow()=" + getFollow() + ", getHit()=" + getHit()
				+ ", getKcal()=" + getKcal() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	

}
