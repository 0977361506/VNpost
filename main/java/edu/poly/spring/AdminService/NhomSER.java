package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.spring.AdminRes.NhomREs;
import edu.poly.spring.EntitiesAdmin.Nhom;

public interface NhomSER {

	void deleteAll();

	void deleteAll(Iterable<? extends Nhom> entities);

	void delete(Nhom entity);

	void deleteById(Integer id);

	long count();

	Iterable<Nhom> findAllById(Iterable<Integer> ids);

	List<Nhom> findAll();

	boolean existsById(Integer id);

	Optional<Nhom> findById(Integer id);

	<S extends Nhom> Iterable<S> saveAll(Iterable<S> entities);

	<S extends Nhom> S save(S entity);



}
