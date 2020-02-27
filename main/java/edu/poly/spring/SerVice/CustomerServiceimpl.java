package edu.poly.spring.SerVice;





import java.util.Optional;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

import org.hibernate.Session;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.poly.spring.Responsitory.CustumerRes;
import edu.poly.spring.model.Customer;






@Service
@Transactional
public class CustomerServiceimpl implements CustomerSerVice {
	@Autowired
	CustumerRes cus;
	@Autowired
	EntityManagerFactory entityManagerFactory ;
	@Override
	public Optional<Customer> findById(String id) {
		return cus.findById(id);
	}

	@Override
	public Customer save(Customer entity) {
		return cus.save(entity);
	}

	@Override
	public <S extends Customer> Iterable<S> saveAll(Iterable<S> entities) {
		return cus.saveAll(entities);
	}

	
	@Override
	public Customer findById1(String id) {
	Session session = entityManagerFactory.createEntityManager().unwrap(Session.class);
		Customer vCustomer = session.find(Customer.class, id);
		return vCustomer;
	}


	@Override
	public boolean existsById(String id) {
		return cus.existsById(id);
	}

	@Override
	public Iterable<Customer> findAll() {
		return cus.findAll();
	}

	@Override
	public Iterable<Customer> findAllById(Iterable<String> ids) {
		return cus.findAllById(ids);
	}

	@Override
	public long count() {
		return cus.count();
	}

	@Override
	public void deleteById(String id) {
		cus.deleteById(id);
	}

	@Override
	public void delete(Customer entity) {
		cus.delete(entity);
	}

	@Override
	public void deleteAll(Iterable<? extends Customer> entities) {
		cus.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		cus.deleteAll();
	}
	
	@Override
	
	public void update(Customer customer) {
		Session session  = entityManagerFactory.createEntityManager().unwrap(Session.class);
		/* String  sqString = "Update Customer c  SET c.password=:pass , fullname=:name where id=:id";
		 Query query = session.createNativeQuery(sqString);
		 query.setParameter("pass", customer.getPassword());
		 query.setParameter("name", customer.getFullname());
		 query.setParameter("id", id);
		 int m = query.executeUpdate();
		 System.out.println("so ket qua la"+m); */
		session.merge(customer);
		 
	}
	
	

	


	
}
