package dao;

import bean.Adminuser;

public interface IAdminuserDao {

	Adminuser getAdminuserByUserid(String id) throws Exception;
	
	Adminuser getByLoginAndPassword(String login,String password) throws Exception;
	
	void save(Adminuser user) throws Exception;
}
