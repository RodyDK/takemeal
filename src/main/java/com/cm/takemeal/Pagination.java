package com.cm.takemeal;

import java.net.URLEncoder;



public class Pagination {
	
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	
	private int displayPageNum = 5;
	
	private Setting setting;
	
	

	
	
	public void setSetting(Setting setting) {
		this.setting = setting;
	}

	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}
	
	private void calcData() {
		
		endPage = (int)(Math.ceil(setting.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1 ;
		
		int tempEndPage = (int)(Math.ceil(totalCount / (double)setting.getPerPageNum()));
		
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true ;
		
		next = endPage * setting.getPerPageNum() >= totalCount ? false : true;
		
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public boolean isPrev() {
		return prev;
	}


	public void setPrev(boolean prev) {
		this.prev = prev;
	}


	public boolean isNext() {
		return next;
	}


	public void setNext(boolean next) {
		this.next = next;
	}


	public int getDisplayPageNum() {
		return displayPageNum;
	}


	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}


	public int getTotalCount() {
		return totalCount;
	}


	public Setting getSetting() {
		return setting;
	}



	@Override
	public String toString() {
		return "Pagination [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", displayPageNum=" + displayPageNum + ", setting=" + setting
				+ ", getStartPage()=" + getStartPage() + ", getEndPage()=" + getEndPage() + ", isPrev()=" + isPrev()
				+ ", isNext()=" + isNext() + ", getDisplayPageNum()=" + getDisplayPageNum() + ", getTotalCount()="
				+ getTotalCount() + ", getSetting()=" + getSetting() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}


	
	
	
	
}
