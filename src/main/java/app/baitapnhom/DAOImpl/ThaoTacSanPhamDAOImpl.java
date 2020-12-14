package app.baitapnhom.DAOImpl;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.baitapnhom.dao.ThaoTacSanPhamDAO;

@Repository
public class ThaoTacSanPhamDAOImpl<T> implements ThaoTacSanPhamDAO<T>{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private T type;
	public ThaoTacSanPhamDAOImpl(T type) {
		this.type = type;
	}
	public ThaoTacSanPhamDAOImpl() {
	}

	@Override
	public boolean Them(T t) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.persist(t);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean Sua(T t) {
		try {
			Session session = sessionFactory.getCurrentSession();
			session.saveOrUpdate(t);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	
	@Override
	public List<T> getTatCa(Class<T> clazz) {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(clazz);
		return criteria.list();
	}
	

}
