package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IShipmentTypeDao;
import in.nit.model.ShipmentType;

@Repository
public class ShipmentTypeDaoImpl implements IShipmentTypeDao {

	@Autowired
	private HibernateTemplate ht;
	@Override
	public Integer saveShipmentType(ShipmentType ob) {
		
		return (Integer)ht.save(ob);
	}

	
	@Override
	public List<ShipmentType> getAllShipmentTypes() {
		
		return ht.loadAll(ShipmentType.class);
	}
	
	@Override
	public void deleteShipmentType(Integer id) {
		ShipmentType s=new ShipmentType();
		s.setShipId(id);
		ht.delete(s);
	
	}
	
	@Override
	public ShipmentType getOneShipmentType(Integer id) {
	
		return ht.get(ShipmentType.class, id);
	}
	
	@Override
	public void updateShipmentType(ShipmentType ob) {
	
		ht.update(ob);
	}
	
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Object[]> getShipmentModeCount() {
		String hql=" select shipMode,count(shipMode) from in.nit.model.ShipmentType "
				+" group by shipMode ";
		return (List<Object[]>) ht.find(hql);
	}
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<Object[]> getShipIdAndCode() {
		String hql=" select shipId,shipCode from "+ShipmentType.class.getName()+" where enbShip='Yes' ";
		List<Object[]> list= (List<Object[]>) ht.find(hql);
		return list;
	}
	
	@Override
	public boolean isShipCodeExist(String shipCode) {
		boolean flag=false;
		
		String hql="Select count(shipCode) from in.nit.model.ShipmentType where shipCode=?0";
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<Long> list=(List<Long>) ht.find(hql,shipCode);
		if(list!=null && !list.isEmpty()) {
			long count=list.get(0);
			if(count==0) flag=false;
			else flag=true;
		}
		return flag;
	}
	
	
}
