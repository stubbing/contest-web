package service;


import java.util.List;

import bean.Normaluser;
import bean.Schooluser;
import bean.Teaminfo;

public interface ISchooluserService {
	
	Schooluser getUserByLoginAndPassword(String login, String password) throws Exception;
	
	void save(Schooluser user) throws Exception;
	
	List<Normaluser> getUsersBySchool(String school) throws Exception;
	
	List<Teaminfo> getTeaminfoBySchool(String school) throws Exception;
	
	List<Teaminfo> getAllTeams() throws Exception;

}
