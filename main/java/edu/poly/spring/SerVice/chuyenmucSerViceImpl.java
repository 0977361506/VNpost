package edu.poly.spring.SerVice;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.poly.spring.Responsitory.ChuyenMucRes;
import edu.poly.spring.model.ChuyenMuc;

@Service
public class chuyenmucSerViceImpl implements ChuyenMucSerVice{
	@Autowired
	ChuyenMucRes cm;
    @Override
	public ChuyenMuc save(ChuyenMuc entity) {
		return cm.save(entity);
	}


	@Override
	public Optional<ChuyenMuc> findById(Integer id) {
		return cm.findById(id);
	}

	@Override
	public boolean existsById(Integer id) {
		return cm.existsById(id);
	}

	@Override
	public List<ChuyenMuc> findAll() {
		return (List<ChuyenMuc>) cm.findAll();
	}

	@Override
	public Iterable<ChuyenMuc> findAllById(Iterable<Integer> ids) {
		return cm.findAllById(ids);
	}

	@Override
	public long count() {
		return cm.count();
	}

	@Override
	public void deleteById(Integer id) {
		cm.deleteById(id);
	}

	@Override
	public void delete(ChuyenMuc entity) {
		cm.delete(entity);
	}



	@Override
	public void deleteAll() {
		cm.deleteAll();
	}
    
}
