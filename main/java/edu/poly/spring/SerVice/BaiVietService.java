package edu.poly.spring.SerVice;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.spring.Responsitory.BaiVietRes;
import edu.poly.spring.model.BaiViet;

public interface BaiVietService {

	void deleteAll();

	void deleteAll(Iterable<? extends BaiViet> entities);

	void delete(BaiViet entity);

	void deleteById(Integer id);

	long count();

	Iterable<BaiViet> findAllById(Iterable<Integer> ids);

	List<BaiViet> findAll();

	boolean existsById(Integer id);

	Optional<BaiViet> findById(Integer id);

	BaiViet save(BaiViet entity);
	public List<BaiViet> findbydb(Integer id);
	List<BaiViet> tktheocm(Integer id);
	public BaiViet tk(Integer id) ;
}
