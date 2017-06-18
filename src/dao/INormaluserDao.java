package dao;

import java.util.List;

import bean.Normaluser;

public interface INormaluserDao {

	void save(Normaluser user) throws Exception;

	Normaluser getNormaluserById(String id) throws Exception;

	Normaluser getNormaluserByUserid(String user) throws Exception;

	Normaluser getByLoginAndPasswrod(String login, String password) throws Exception;
	
	List<Normaluser> getNormalusersBySchool(String school) throws Exception;
	
	List<Normaluser> getAllUsers() throws Exception;


}
