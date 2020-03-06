package edu.poly.spring.AdminRes;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.poly.spring.EntitiesAdmin.ChucVu;
@Repository
public interface ChucVuRes extends CrudRepository<ChucVu, Integer>{

}
