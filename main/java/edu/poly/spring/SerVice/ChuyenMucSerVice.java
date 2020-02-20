package edu.poly.spring.SerVice;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.spring.Responsitory.ChuyenMucRes;
import edu.poly.spring.model.ChuyenMuc;

public interface ChuyenMucSerVice {

	void deleteAll();

	void delete(ChuyenMuc entity);

	void deleteById(Integer id);

	long count();

	Iterable<ChuyenMuc> findAllById(Iterable<Integer> ids);

	List<ChuyenMuc> findAll();

	boolean existsById(Integer id);

	Optional<ChuyenMuc> findById(Integer id);

	ChuyenMuc save(ChuyenMuc entity);

	

}
