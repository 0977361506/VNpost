package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.spring.AdminRes.ChucVuRes;
import edu.poly.spring.EntitiesAdmin.ChucVu;

public interface ChucVuSerVice {

	void deleteAll();

	void deleteAll(Iterable<? extends ChucVu> entities);

	void delete(ChucVu entity);

	void deleteById(Integer id);

	long count();

	Iterable<ChucVu> findAllById(Iterable<Integer> ids);

	List<ChucVu> findAll();

	boolean existsById(Integer id);

	ChucVu findById1(Integer id);

	Optional<ChucVu> findById(Integer id);

	<S extends ChucVu> Iterable<S> saveAll(Iterable<S> entities);

	ChucVu save(ChucVu entity);

	

}
