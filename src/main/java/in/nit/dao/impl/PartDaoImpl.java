package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IPartDao;
import in.nit.model.Part;

@Repository
public class PartDaoImpl implements IPartDao {

	@Autowired
	private HibernateTemplate ht;
	
	
	@Override
	public Integer savePart(Part ob) {
		return (Integer) ht.save(ob);
	}
	
	@Override
	public List<Part> getAllParts() {
		return ht.loadAll(Part.class);
	}
	
	@Override
	public void deletePart(Integer id) {
		Part p=new Part();
		p.setPartId(id);
		ht.delete(p);
		
	}
	
	@Override
	public Part getOnePart(Integer id) {
	
		return ht.get(Part.class, id);
	}
	
	@Override
	public void updatePart(Part ob) {
		ht.update(ob);
	}
	
}
