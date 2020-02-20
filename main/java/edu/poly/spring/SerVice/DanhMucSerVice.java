package edu.poly.spring.SerVice;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.spring.Responsitory.DanhMucRes;
import edu.poly.spring.model.BaiViet;
import edu.poly.spring.model.DanhMuc;

public interface DanhMucSerVice {

	void deleteAll();

	void deleteAll(Iterable<? extends DanhMuc> entities);

	void delete(DanhMuc entity);

	void deleteById(Integer id);

	long count();

	Iterable<DanhMuc> findAllById(Iterable<Integer> ids);

	List<DanhMuc> findAll();

	boolean existsById(Integer id);

	Optional<DanhMuc> findById(Integer id);

	<S extends DanhMuc> Iterable<S> saveAll(Iterable<S> entities);

	DanhMuc save(DanhMuc entity);
	public List<DanhMuc> findbyCm(int id);


}
