package dao;

import java.util.List;

import entities.Account;
import entities.Category;
import entities.Page;
import entities.Product;

public interface AccountDao {
	public Account getAccount(String email);
	public List<Account> getAll();
	public Account getById(int id);
	public void insert(Account ac);
	public void delete(int id);
	public Page paging(int accid , int pageno, int pagesize);
}
