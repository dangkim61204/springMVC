package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entities.Category;
import entities.Page;
import entities.Product;

@Repository
public class ProductImpl implements ProductDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getAll() {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Product> data=session.createQuery("from Product").list();
		session.getTransaction().commit();
		session.close();
		return data;
	}

	@Override
	public Product getById(int id) {
		Session session=sessionFactory.getCurrentSession();
		session.beginTransaction();
		Product pro= session.find(Product.class, id);
		session.close();
		return pro;

	}

	@Override
	public void insert(Product p) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
		session.close();
		
	}

	@Override
	public void update(Product p) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(p);
		session.getTransaction().commit();
		session.close();
		
	}

	@Override
	public void delete(int id) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Product pro= session.find(Product.class, id);
		session.remove(pro);
		session.getTransaction().commit();
		session.close();
		
	}

	@Override
	public Page paging(int proid, int pageno, int pagesize) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		int records=0;
		Query query=null;
		if(proid==0) {
			query=session.createQuery("from Product");
			records=query.getResultList().size();
			query.setFirstResult((pageno-1)*pagesize).setMaxResults(pagesize).getResultList();	
		}else {
			query=session.createQuery("from Product where id=:proid").setParameter("proid", proid);
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

	@Override
	public List<Product> search(int cateid) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Query query=null;
		if(cateid==0) {
			query=session.createQuery("from Product");
		}else{
			query=session.createQuery("from Product where categoryid=:cateid");
			query.setParameter("cateid",cateid);
		}
		List data=query.getResultList();
		session.close();
		return data;
	}

	@Override
	public List<Product> search(int cateid, String name) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Query query=null;
		if(cateid==0) {
			System.out.println(name+" vaof search");
			query=session.createQuery("from Product where name like :name").setParameter("name", "%"+name+"%");
		}else{
			query=session.createQuery("from Product where categoryid=:cateid and name like :name");
			query.setParameter("cateid",cateid);
			query.setParameter("name","%"+name+"%");
		}
		List data=query.getResultList();
	
		session.close();
		return data;
	}

	@Override
	public List<Product> search(float fromPrice, float toPrice) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Query query=null;
		if(fromPrice==0 && toPrice>0) {
			System.out.println(toPrice  +"vào day" );
			System.out.println(fromPrice  +"11111" );

			query=session.createQuery("from Product where price<=:toPrice").setParameter("toPrice",toPrice);
		}else if(fromPrice>0 && toPrice==0)
		{
			System.out.println(toPrice  +"day" );
			System.out.println(fromPrice  +"11111" );
			query=session.createQuery("from Product where price>=:fromPrice").setParameter("fromPrice",fromPrice);
		}else {
			System.out.println(toPrice  +"k vao" );
			System.out.println(fromPrice  +"11111" );
			query=session.createQuery("from Product where price>=:fromPrice and price<=:toPrice");
			query.setParameter("toPrice",toPrice);
			query.setParameter("fromPrice",fromPrice);
		}
		List data=query.getResultList();
		session.close();
		return data;
	}

}
