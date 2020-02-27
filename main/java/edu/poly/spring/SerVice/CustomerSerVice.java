package edu.poly.spring.SerVice;




import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import edu.poly.spring.model.Customer;

public interface CustomerSerVice {

	void deleteAll();

	void deleteAll(Iterable<? extends Customer> entities);

	void delete(Customer entity);

	void deleteById(String id);

	long count();

	Iterable<Customer> findAllById(Iterable<String> ids);

	Iterable<Customer> findAll();

	boolean existsById(String id);



	<S extends Customer> Iterable<S> saveAll(Iterable<S> entities);

	Customer save(Customer entity);

	Optional<Customer> findById(String id);

	Customer findById1(String id);

	public void update(Customer customer);
  
	




	


}
