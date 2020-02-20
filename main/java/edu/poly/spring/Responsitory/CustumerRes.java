package edu.poly.spring.Responsitory;

import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;

import edu.poly.spring.model.Customer;



@Repository
public interface CustumerRes extends CrudRepository<Customer, String>{

}
