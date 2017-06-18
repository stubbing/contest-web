package dao;

import java.util.List;

import bean.Teaminfo;

public interface ITeaminfoDao {
	
	List<Teaminfo> getTeamsBySchool(String school) throws Exception;
	
	List<Teaminfo> getAllTeams() throws Exception;	
	
	Teaminfo getTeamInfoById(String id) throws Exception;
	
	Teaminfo getTeamInfoByTeamNo(int teamno) throws Exception;
	
	int getTeamNoById(String id) throws Exception;
	
}
