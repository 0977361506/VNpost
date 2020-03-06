package edu.poly.spring.AdminRes;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.poly.spring.EntitiesAdmin.Ungdung;
@Repository
public interface UngDungRes extends CrudRepository<Ungdung, Integer>{
 
}
