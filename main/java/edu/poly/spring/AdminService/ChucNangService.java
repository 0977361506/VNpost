package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.spring.AdminRes.ChucnangRes;
import edu.poly.spring.EntitiesAdmin.chucnang;

public interface  ChucNangService {
	List<chucnang> find(int danhsach);
	void deleteAll();

	void deleteAll(Iterable<? extends chucnang> entities);

	void delete(chucnang entity);

	void deleteById(Integer id);

	long count();

	Iterable<chucnang> findAllById(Iterable<Integer> ids);

	List<chucnang> findAll();

	boolean existsById(Integer id);

	Optional<chucnang> findById(Integer id);

	<S extends chucnang> Iterable<S> saveAll(Iterable<S> entities);

	chucnang save(chucnang entity);


}
