package dao;

import java.util.List;

import entities.Category;
import entities.Page;
import entities.Product;

public interface ProductDao {
	public List<Product> getAll();
	public List<Product> search(int cateid);
	public List<Product> search(int cateid,String name);
	public List<Product> search(float fromPrice,float toPrice);
	public Product getById(int id);
	public void insert(Product p);
	public void update(Product p);
	public void delete(int id);
	public Page paging(int proid , int pageno, int pagesize);

}
