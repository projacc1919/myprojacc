package in.nit.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.nit.dao.IUomDao;
import in.nit.model.Uom;
import in.nit.service.IUomService;

@Service
public class UomServiceImpl implements IUomService {

	@Autowired
	private IUomDao dao;
	
	
	
	@Override
	@Transactional
	public Integer saveUom(Uom ob) {
	
		return dao.saveUom(ob);
	}
	
	
	@Override
	@Transactional(readOnly=true)
	public List<Uom> getAllUoms() {
	
		List<Uom> list=dao.getAllUoms();
		Collections.sort(list,(o1,o2)->o1.getUomId()-o2.getUomId());
		return list;
	}
	
	@Override
	@Transactional
	public void deleteUom(Integer id) {
		dao.deleteUom(id);

	}
	
	@Override
	@Transactional(readOnly=true)
	public Uom getOneUom(Integer id) {
		return dao.getOneUom(id);
	}
	
	@Override
	@Transactional
	public void updateUom(Uom ob) {
		dao.updateUom(ob);
		
	}
	
	@Override
	@Transactional(readOnly=true)
	public List<Object[]> getUomTypeCount() {
	
		return dao.getUomTypeCount();
	}

	@Override
	@Transactional(readOnly = true)
	public List<Object[]> getuomIdAnduomModel() {
		return dao.getuomIdAnduomModel();
	}
}
