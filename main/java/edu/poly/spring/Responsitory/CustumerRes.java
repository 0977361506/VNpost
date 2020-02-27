package edu.poly.spring.Responsitory;



import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import edu.poly.spring.model.Customer;



@Repository
@Transactional
public interface CustumerRes extends CrudRepository<Customer, String>{

}
