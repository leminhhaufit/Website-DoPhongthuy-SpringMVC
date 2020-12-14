package app.baitapnhom.config;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import app.baitapnhom.entities.TaiKhoan;



@Repository
public class ManageUserImpl implements IManageUser  {
	@Autowired
	public SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public String hihi() {
		Session session = sessionFactory.getCurrentSession();
		 List<TaiKhoan> lst = session.createNativeQuery("select * from taikhoan", TaiKhoan.class).getResultList();
		 for (int i = 0; i < lst.size(); i++) {
			System.out.println(lst.get(i).getAutho());
		}
		 
		 return "hihi";
		
	}

	@Override
	@Transactional
	public TaiKhoan findUser(String username) {
		Session session = sessionFactory.getCurrentSession();
		List<TaiKhoan> lst = session.createNativeQuery("select * from taikhoan where username=?", TaiKhoan.class).setParameter(1, username).getResultList();
		for (int i = 0; i < lst.size(); i++) {
			System.out.println(lst.get(i));
			System.out.println("ok");
		}
		if(lst.size() >0) {
			System.out.println(lst.get(0));
			return lst.get(0);
			
		}else {
			return null;
		}
		
	}

}
