package in.nit.service;

import java.util.List;

import in.nit.model.WhUserType;

public interface IWhUserTypeService {

	public Integer saveWhUserType(WhUserType ob);
	public List<WhUserType> getAllWhUserType();
	public void deleteWhUserType(Integer id);
	public WhUserType getOneWhUserType(Integer id);
	public void updateWhUserType(WhUserType ob);
	public List<Object[]> getWhUserIdTypeCount();
}
