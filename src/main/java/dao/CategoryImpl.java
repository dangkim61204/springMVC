package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entities.Category;
import entities.Page;
@Repository
public class CategoryImpl implements CategoryDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Category> getAll() {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Category> data=session.createQuery("from Category").list();
		session.getTransaction().commit();
		session.close();
		return data;
	}

	@Override
	public Category getById(int id) {
		Session session=sessionFactory.openSession();
		Category cate= session.find(Category.class, id);
		session.close();
		return cate;
	}

	@Override
	public void insert(Category c) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void update(Category c) {
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(c);
		session.getTransaction().commit();
		session.close();
		
		
	}

	@Override
	public void delete(int id) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Category cate= session.find(Category.class, id);
		session.remove(cate);
		session.getTransaction().commit();
		session.close();
		
	}

	@Override
	public Page paging(int cateid, int pageno, int pagesize) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		int records=0;
		Query query=null;
		if(cateid==0) {
			query=session.createQuery("from Category");
			records=query.getResultList().size();
			query.setFirstResult((pageno-1)*pagesize).setMaxResults(pagesize).getResultList();	
		}else {
			query=session.createQuery("from Category where id=:cateid").setParameter("cateid", cateid);
			records=query.getResultList().size();
			query.setFirstResult((pageno-1)*pagesize).setMaxResults(pagesize).getResultList();	
		}
		List data=query.getResultList();
		Page p=new Page();
		p.setPros(data);
		p.setCurrentPage(pageno);
		p.setPageSize(pagesize);
		int totalpage=records%pagesize==0?records/pagesize:(records/pagesize)+1;
		p.setTotalPages(totalpage);
		session.close();
		return p;
	}

	



	


}
