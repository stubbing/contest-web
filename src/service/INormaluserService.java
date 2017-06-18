package service;

import bean.Normaluser;
import bean.Teaminfo;

public interface INormaluserService {
	
	void addUser(Normaluser user) throws Exception;

	void enroll(Teaminfo team) throws Exception;

	void save(Normaluser user) throws Exception;

	Normaluser getUserByLoginAndPassword(String login, String password) throws Exception;
	
	boolean isLoginValid(String login) throws Exception;

	void modifyPassword(String user, String password) throws Exception;
	
	Normaluser getUserById(String id) throws Exception;

}
