package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entities.Account;
import entities.Category;
import entities.Page;
import entities.Product;
@Repository
public class AccountImpl implements AccountDao{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Account getAccount(String email) {
		Account account =null;
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("from Account where email=:email");
		query.setParameter("email", email);
		try {
			account=(Account)query.getSingleResult();
			
		} catch (Exception e) {
		
		}finally {
			session.close();
		}
		return account;
	}

	@Override
	public Page paging(int accid, int pageno, int pagesize) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		int records=0;
		Query query=null;
		if(accid==0) {
			query=session.createQuery("from Account");
			records=query.getResultList().size();
			query.setFirstResult((pageno-1)*pagesize).setMaxResults(pagesize).getResultList();	
		}else {
			query=session.createQuery("from Product where id=:accid").setParameter("accid", accid);
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
	public List<Account> getAll() {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Account> data=session.createQuery("from Account").list();
		session.getTransaction().commit();
		session.close();
		return data;
		
	}

	@Override
	public void insert(Account ac) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(ac);
		session.getTransaction().commit();
		session.close();
		
	}

	@Override
	public Account getById(int id) {
		Session session=sessionFactory.openSession();
		Account acc= session.find(Account.class, id);
		session.close();
		return acc;
	}

	@Override
	public void delete(int id) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Account acc= session.find(Account.class, id);
		session.remove(acc);
		session.getTransaction().commit();
		session.close();
		
	}
	
	

}
