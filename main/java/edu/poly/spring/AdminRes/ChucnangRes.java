package edu.poly.spring.AdminRes;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.poly.spring.EntitiesAdmin.chucnang;
@Repository
public interface ChucnangRes extends CrudRepository<chucnang, Integer>{

}
