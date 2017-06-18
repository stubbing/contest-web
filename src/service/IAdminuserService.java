package service;

import bean.Adminuser;

public interface IAdminuserService {
	
	Adminuser getUserByLoginAndPassword(String login, String password) throws Exception;
	
	void save(Adminuser user) throws Exception;
	
	Adminuser gerUserByUserid(String id) throws Exception;
	
	

}
