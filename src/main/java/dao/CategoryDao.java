package dao;

import java.util.List;

import entities.Category;
import entities.Page;

public interface CategoryDao {
	public List<Category> getAll();
	public Category getById(int id);
	public void insert(Category c);
	public void update(Category c);
	public void delete(int id);
	public Page paging(int cateid , int pageno, int pagesize);

}
