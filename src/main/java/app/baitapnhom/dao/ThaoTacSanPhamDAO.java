package app.baitapnhom.dao;

import java.util.List;

public interface ThaoTacSanPhamDAO<T> {
	public boolean Them(T t);
	public boolean Sua(T t);
	public List<T> getTatCa(Class<T> clazz);
	

}
