package edu.poly.spring.Responsitory;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.poly.spring.model.BaiViet;
@Repository
public interface BaiVietRes extends CrudRepository<BaiViet, Integer> {

}
