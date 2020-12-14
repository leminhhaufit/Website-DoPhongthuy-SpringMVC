package app.baitapnhom.DAOImpl;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.baitapnhom.dao.TaiKhoanDAO;
import app.baitapnhom.entities.TaiKhoan;

@Repository
public class TaiKhoanDAOImpl implements TaiKhoanDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void themTaiKhoan(TaiKhoan tk) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(tk);
		
	}


	

}
