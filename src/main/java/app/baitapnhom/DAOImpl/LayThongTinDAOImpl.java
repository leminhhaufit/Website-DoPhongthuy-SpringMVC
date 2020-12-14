package app.baitapnhom.DAOImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.baitapnhom.dao.LayThongTinDAO;
import app.baitapnhom.entities.KhachHang;
import app.baitapnhom.entities.LoaiSanPham;
import app.baitapnhom.entities.NhaCungCap;
import app.baitapnhom.entities.NuocSanXuat;

@Repository
public class LayThongTinDAOImpl implements LayThongTinDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public NhaCungCap getNhaCUngCap(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(NhaCungCap.class, id);
	}

	@Override
	public LoaiSanPham getLoaiPham(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(LoaiSanPham.class, id);
		
	}

	@Override
	public NuocSanXuat getNuocSanXuat(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.find(NuocSanXuat.class, id);
		
	}
	
	@Override
	public List<NhaCungCap> getNhaCUngCapByName(String tenncc) {
		Session session = sessionFactory.getCurrentSession();

		return session
				.createNativeQuery("select * from NhaCungCap where tenncc like N'%" + tenncc + "%'", NhaCungCap.class)
				.getResultList();
	}

	@Override
	public List<LoaiSanPham> getLoaiPhamByName(String tenloai) {
		Session session = sessionFactory.getCurrentSession();
		return session.createNativeQuery("select * from LoaiSanPham where tenloai like N'%" + tenloai + "%'",
				LoaiSanPham.class).getResultList();
	}

	@Override
	public List<NuocSanXuat> getNuocSanXuatByName(String tenNuoc) {
		Session session = sessionFactory.getCurrentSession();
		return session.createNativeQuery("select * from NuocSanXuat where tennuoc like N'%" + tenNuoc + "%'",
				NuocSanXuat.class).getResultList();
	}

	@Override
	public boolean deleteNCC(String id) {
		Session session = sessionFactory.getCurrentSession();

		NhaCungCap ncc = session.load(NhaCungCap.class, new String(id));
		try {
			session.delete(ncc);
			
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			
			return false;
		}

		
	}

	@Override
	public boolean deleteLoai(String id) {
		Session session = sessionFactory.getCurrentSession();

		NhaCungCap ncc = session.load(NhaCungCap.class, new String(id));
		try {
			session.delete(ncc);
			
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			
			return false;
		}

	}

	@Override
	public boolean deleteNuoc(String id) {
		Session session = sessionFactory.getCurrentSession();

		NhaCungCap ncc = session.load(NhaCungCap.class, new String(id));
		try {
			session.delete(ncc);
			
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			
			return false;
		}
	}

	

}
