package com.cm.takemeal.noticeboard.model.vo;

public class Criteria {
	
	private int page;	
	private int perPageNum;
	
	public Criteria(){
		this.page = 1;
		this.perPageNum = 10;
	}

	public void setPage(int page){
		System.out.println("크리테리아 : page " + page);
		
		if(page <= 0){
			this.page = 1;
			return;
		}
		
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum){
		
		if(perPageNum <= 0 || perPageNum > 100){
			this.perPageNum = 10;
			return;
		}
		
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}	
	
	//method for MyBatis SQL Mapper - 
	public int getPageStart() {
		if(this.page <= 1) {
			return 1;
		}
		
		return (this.page * perPageNum) - 9;
	}
	//method for MyBatis SQL Mapper - 
	//pageEnd mapper에서 쓰면됨
	public int getPageEnd() {
		return this.page * perPageNum;
	}
	
	//method for MyBatis SQL Mapper 
	public int getPerPageNum(){
		
		return this.perPageNum;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "]";
	}
}
