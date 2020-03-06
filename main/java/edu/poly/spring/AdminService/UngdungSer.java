package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManagerFactory;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.spring.AdminRes.UngDungRes;
import edu.poly.spring.EntitiesAdmin.Ungdung;

public interface UngdungSer {

	void deleteAll();

	void deleteAll(Iterable<? extends Ungdung> entities);

	void delete(Ungdung entity);

	void deleteById(Integer id);

	long count();

	Iterable<Ungdung> findAllById(Iterable<Integer> ids);

	List<Ungdung> findAll();

	Ungdung findById1(Integer id);

	boolean existsById(Integer id);

	Optional<Ungdung> findById(Integer id);

	<S extends Ungdung> Iterable<S> saveAll(Iterable<S> entities);

	Ungdung save(Ungdung entity);

	
	
}
