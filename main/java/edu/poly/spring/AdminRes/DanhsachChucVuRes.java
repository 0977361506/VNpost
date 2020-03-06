package edu.poly.spring.AdminRes;

import edu.poly.spring.EntitiesAdmin.ChucVuDetail;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface DanhsachChucVuRes extends CrudRepository<ChucVuDetail, Integer>{

}
