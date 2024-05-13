package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entities.Cart;
import entities.Order;
import entities.OrderDetail;
import entities.Page;
import entities.Product;
@Repository
public class OrderImpl implements OrderDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Order> getAll() {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Order> data=session.createQuery("from Order").list();
		session.getTransaction().commit();
		session.close();
		return data;
	}

	@Override
	public List<Order> search(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Order getById(int id) {
		Session session=sessionFactory.openSession();
		Order car= session.find(Order.class, id);
		session.close();
		return car;
	}


	@Override
	public List<OrderDetail> getId(String id) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<OrderDetail> data=session.createQuery("from OrderDetail where order.id=:order_id").setParameter("order_id", id).getResultList();
		session.getTransaction().commit();
		session.close();
		return data;
	}
	
//	@Override
//	public boolean delete_don_hang(int id) {
//		Session session=sessionFactory.openSession();
//		session.beginTransaction();
//		OrderDetail odtail= session.find(OrderDetail.class, id);
//		session.remove(odtail);
//		session.getTransaction().commit();
//		session.close();
//		return true;
//	}

	
	@Override
	public boolean insert(Order od) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(od);
		session.getTransaction().commit();
		session.close();
		return true;
	}

	@Override
	public boolean update(Order od) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(od);
		session.getTransaction().commit();
		session.close();
		return true;
	}

	@Override
	public boolean delete(int id) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Order pro= session.find(Order.class, id);
		session.remove(pro);
		session.getTransaction().commit();
		session.close();
		return true;
	}

	
	@Override
	public Page paging(int orderid, int pageno, int pagesize) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		int records=0;
		Query query=null;
		if(orderid==0) {
			query=session.createQuery("from Order");
			records=query.getResultList().size();
			query.setFirstResult((pageno-1)*pagesize).setMaxResults(pagesize).getResultList();	
		}else {
			query=session.createQuery("from Product where id=:orderid").setParameter("orderid", orderid);
			records=query.getResultList().size();
			query.setFirstResult((pageno-1)*pagesize).setMaxResults(pagesize).getResultList();	
		}
		List data=query.getResultList();
		Page ac=new Page();
		ac.setPros(data);
		ac.setCurrentPage(pageno);
		ac.setPageSize(pagesize);
		int totalpage=records%pagesize==0?records/pagesize:(records/pagesize)+1;
		ac.setTotalPages(totalpage);
		session.close();
		return ac;
	}

	@Override
	public boolean insertOrderDetail(Order order, List<OrderDetail> details) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(order);
			for (OrderDetail orderDetail : details) {
				System.out.println(order.getId()+" id of orrder insserted");
				session.save(orderDetail);
			}
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}



	


}
