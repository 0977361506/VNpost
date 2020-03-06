package edu.poly.spring.AdminService;

import java.util.Optional;

import edu.poly.spring.EntitiesAdmin.NhanVien;
import edu.poly.spring.EntitiesAdmin.Ungdung;

public interface NhanVienSer {
	NhanVien findbyName(String name);
	 Ungdung findbyid(String id);
	void delete(NhanVien entity);
	Iterable<NhanVien> findAll();
	Optional<NhanVien> findById(Integer id);
	NhanVien save(NhanVien entity);
	NhanVien findbyid(Integer id);
}
