package com.cm.takemeal.recipe.model.vo;

public class Recipe {

	private int no;
	private String userid;
	private String username;
	private String subject;
	private String contents;
	private String thumbnail1;
	private String thumbnail2;
	private String thumbnail3;
	private String thumbnail4;
	
	private String desc1;
	private String desc2;
	private String desc3;
	private String desc4;
	private String recipe_food;
	private String recipe_amount;
	private String tag;
	private String people;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getDesc1() {
		return desc1;
	}
	public void setDesc1(String desc1) {
		this.desc1 = desc1;
	}
	public String getDesc2() {
		return desc2;
	}
	public void setDesc2(String desc2) {
		this.desc2 = desc2;
	}
	public String getDesc3() {
		return desc3;
	}
	public void setDesc3(String desc3) {
		this.desc3 = desc3;
	}
	public String getDesc4() {
		return desc4;
	}
	public void setDesc4(String desc4) {
		this.desc4 = desc4;
	}
	public String getRecipe_food() {
		return recipe_food;
	}
	public void setRecipe_food(String recipe_food) {
		this.recipe_food = recipe_food;
	}
	public String getRecipe_amount() {
		return recipe_amount;
	}
	public void setRecipe_amount(String recipe_amount) {
		this.recipe_amount = recipe_amount;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
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
		return "Recipe [no=" + no + ", userid=" + userid + ", username=" + username + ", subject=" + subject
				+ ", contents=" + contents + ", thumbnail1=" + thumbnail1 + ", thumbnail2=" + thumbnail2
				+ ", thumbnail3=" + thumbnail3 + ", thumbnail4=" + thumbnail4 + ", desc1=" + desc1 + ", desc2=" + desc2
				+ ", desc3=" + desc3 + ", desc4=" + desc4 + ", recipe_food=" + recipe_food + ", recipe_amount="
				+ recipe_amount + ", tag=" + tag + ", people=" + people + ", time=" + time + ", follow=" + follow
				+ ", hit=" + hit + ", kcal=" + kcal + ", getNo()=" + getNo() + ", getUserid()=" + getUserid()
				+ ", getUsername()=" + getUsername() + ", getSubject()=" + getSubject() + ", getContents()="
				+ getContents() + ", getThumbnail1()=" + getThumbnail1() + ", getThumbnail2()=" + getThumbnail2()
				+ ", getThumbnail3()=" + getThumbnail3() + ", getThumbnail4()=" + getThumbnail4() + ", getDesc1()="
				+ getDesc1() + ", getDesc2()=" + getDesc2() + ", getDesc3()=" + getDesc3() + ", getDesc4()="
				+ getDesc4() + ", getRecipe_food()=" + getRecipe_food() + ", getRecipe_amount()=" + getRecipe_amount()
				+ ", getTag()=" + getTag() + ", getPeople()=" + getPeople() + ", getTime()=" + getTime()
				+ ", getFollow()=" + getFollow() + ", getHit()=" + getHit() + ", getKcal()=" + getKcal()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	

}
