package edu.poly.spring.AdminRes;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.poly.spring.EntitiesAdmin.NhanVien;

@Repository
public interface NhanvienRes extends CrudRepository<NhanVien, Integer>{

}
