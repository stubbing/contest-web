package dao;

import bean.Team;

public interface ITeamDao {
	void save(Team team) throws Exception;
	
	Team getTeamByName(String name) throws Exception;
	
	Team getTeamByTeamNo(int teamno) throws Exception;

}
