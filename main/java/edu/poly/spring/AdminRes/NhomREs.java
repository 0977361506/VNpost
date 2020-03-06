package edu.poly.spring.AdminRes;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.poly.spring.EntitiesAdmin.Nhom;
@Repository
public interface NhomREs extends CrudRepository<Nhom,Integer> {

}
