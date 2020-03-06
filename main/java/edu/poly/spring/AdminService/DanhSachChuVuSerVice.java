package edu.poly.spring.AdminService;

import java.util.List;

import edu.poly.spring.EntitiesAdmin.ChucVu;
import edu.poly.spring.EntitiesAdmin.ChucVuDetail;

public interface DanhSachChuVuSerVice {

	ChucVuDetail findbyid(Integer id);

	void delete(ChucVuDetail entity);

	List<ChucVuDetail> findAll();

	ChucVuDetail save(ChucVuDetail entity);
	List<ChucVuDetail>  findbyChucVu(Integer id);

}
