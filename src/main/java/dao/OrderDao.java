package dao;

import java.util.List;

import entities.Cart;
import entities.Order;
import entities.OrderDetail;
//import entities.OrderDetail;
import entities.Page;

public interface OrderDao {
	public List<Order> getAll();
	public List<Order> search(String name);
	public Order getById(int id);
	//don hnagf
	public List<OrderDetail> getId(String id);
//	public boolean delete_don_hang(int id);
	
	public boolean insert(Order od);
	public boolean update(Order od);
	public boolean delete(int id);
	public Page paging(int orderid , int pageno, int pagesize);
	public boolean insertOrderDetail(Order order, List<OrderDetail> details );
}
