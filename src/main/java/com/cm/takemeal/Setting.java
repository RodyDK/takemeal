package com.cm.takemeal;

public class Setting {
	
	private int page;
	private int perPageNum;
	
	public Setting() {
		// TODO Auto-generated constructor stub
		this.page = 1;
		this.perPageNum = 12;
	}

	public int getPage() {
		
		return page;
	}

	public void setPage(int page) {
		
		if(page<=0) {
			this.page = 1;
			return;
		}
		
		this.page = page;
	}


	public void setPerPageNum(int perPageNum) {
		
		if(perPageNum <=0 || perPageNum >100) {
			this.perPageNum = 12;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	//mothod for SQL
	public int getPageStart() {
		return(this.page -1) * perPageNum;
	}
	

	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	
	

	@Override
	public String toString() {
		return "Setting [page=" + page + ", perPageNum=" + perPageNum + "]";
	}

	
	
	
	

}
