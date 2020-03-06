package edu.poly.spring.AdminService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.spring.AdminRes.NhomREs;
import edu.poly.spring.EntitiesAdmin.Nhom;

@Service
public class NhomSerimpl implements NhomSER  {
	@Autowired
	NhomREs nhom;
  @Override
public <S extends Nhom> S save(S entity) {
	return nhom.save(entity);
}

@Override
public <S extends Nhom> Iterable<S> saveAll(Iterable<S> entities) {
	return nhom.saveAll(entities);
}

@Override
public Optional<Nhom> findById(Integer id) {
	return nhom.findById(id);
}

@Override
public boolean existsById(Integer id) {
	return nhom.existsById(id);
}

@Override
public List<Nhom> findAll() {
	return (List<Nhom>) nhom.findAll();
}

@Override
public Iterable<Nhom> findAllById(Iterable<Integer> ids) {
	return nhom.findAllById(ids);
}

@Override
public long count() {
	return nhom.count();
}

@Override
public void deleteById(Integer id) {
	nhom.deleteById(id);
}

@Override
public void delete(Nhom entity) {
	nhom.delete(entity);
}

@Override
public void deleteAll(Iterable<? extends Nhom> entities) {
	nhom.deleteAll(entities);
}

@Override
public void deleteAll() {
	nhom.deleteAll();
}
  
}
