package entities;

import java.util.List;

public class Page {
	private List<Product> pros;
	private int totalPages;
	private int pageSize;
	private int currentPage;
	public Page() {
		
	}
	public Page(List<Product> pros, int totalPages, int pageSize, int currentPage) {
		super();
		this.pros = pros;
		this.totalPages = totalPages;
		this.pageSize = pageSize;
		this.currentPage = currentPage;
	}
	public List<Product> getPros() {
		return pros;
	}
	public void setPros(List<Product> pros) {
		this.pros = pros;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	

}
