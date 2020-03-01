package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IWhUserTypeDao;
import in.nit.model.WhUserType;

@Repository
public class WhUserTypeDaoImpl implements IWhUserTypeDao {
	
	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public Integer saveWhUserType(WhUserType ob) {
	
		return (Integer)ht.save(ob);
	}
	
	@Override
	public List<WhUserType> getAllWhUserType() {
	
		return ht.loadAll(WhUserType.class);
	}
	
	@Override
	public void deleteWhUserType(Integer id) {
		WhUserType w=new WhUserType();
		w.setWhId(id);
		ht.delete(w);
	
	}
	
	@Override
	public WhUserType getOneWhUserType(Integer id) {
	
		return ht.get(WhUserType.class, id);
	}
	
	@Override
	public void updateWhUserType(WhUserType ob) {
		ht.update(ob);
		
	}
	
	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<Object[]> getWhUserIdTypeCount() {
		String hql=" select userIdType,Count(userIdType) from "+
				" in.nit.model.WhUserType group by userIdType ";
		return (List<Object[]>) ht.find(hql);
	}
	
}
