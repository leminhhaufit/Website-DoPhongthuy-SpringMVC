package app.baitapnhom.service;

import java.util.List;

public interface ThaoTacSanPhamService<T> {
	public boolean Them(T t);
	public boolean Sua(T t);
	public List<T> getTatCa(Class<T> clazz);
	

}
