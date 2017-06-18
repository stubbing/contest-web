package dao;

import bean.Works;

public interface IWorksDao {
	void save(Works works) throws Exception;
	
	Works getWorksByName(String name) throws Exception;
	
	Works  getWorksByTeamNo(int i) throws Exception;

}
