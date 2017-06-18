package service.impl;

import java.util.List;

import bean.Normaluser;
import bean.Schooluser;
import bean.Teaminfo;
import dao.INormaluserDao;
import dao.ISchooluserDao;
import dao.ITeaminfoDao;
import service.ISchooluserService;

public class SchooluserServiceImpl implements ISchooluserService {
	private ISchooluserDao schooluserDao;
	private INormaluserDao normaluserDao;
	private ITeaminfoDao teaminfoDao;

	@Override
	public Schooluser getUserByLoginAndPassword(String login, String password) throws Exception {
		// TODO Auto-generated method stub
		boolean isValid = login != null && password != null;
		if(!isValid) {
			return null;
		}
		return schooluserDao.getByLoginAndPassword(login, password);
	}
	
	@Override
	public void save(Schooluser user) throws Exception {
		// TODO Auto-generated method stub
		if(user != null) {
			schooluserDao.save(user);
		}
	}
	
	/**
	 * @return the normaluserDao
	 */
	public INormaluserDao getNormaluserDao() {
		return normaluserDao;
	}

	/**
	 * @param normaluserDao the normaluserDao to set
	 */
	public void setNormaluserDao(INormaluserDao normaluserDao) {
		this.normaluserDao = normaluserDao;
	}

	/**
	 * @return the schoolDao
	 */
	public ISchooluserDao getSchoolDao() {
		return schooluserDao;
	}

	/**
	 * @param schoolDao the schoolDao to set
	 */
	public void setSchooluserDao(ISchooluserDao schoolDao) {
		this.schooluserDao = schoolDao;
	}

	/**
	 * @return the teaminfoDao
	 */
	public ITeaminfoDao getTeaminfoDao() {
		return teaminfoDao;
	}

	/**
	 * @param teaminfoDao the teaminfoDao to set
	 */
	public void setTeaminfoDao(ITeaminfoDao teaminfoDao) {
		this.teaminfoDao = teaminfoDao;
	}

	/**
	 * @return the schooluserDao
	 */
	public ISchooluserDao getSchooluserDao() {
		return schooluserDao;
	}

	@Override
	public List<Normaluser> getUsersBySchool(String school) throws Exception {
		// TODO Auto-generated method stub
		if(school != null && !school.equals("")) {
			return normaluserDao.getNormalusersBySchool(school);
		} else {
			return null;
		}
	}

	@Override
	public List<Teaminfo> getTeaminfoBySchool(String school) throws Exception {
		// TODO Auto-generated method stub
		if(school != null && !school.equals("")) {
			return teaminfoDao.getTeamsBySchool(school);
		} else {
			return null;
		}
	}

	@Override
	public List<Teaminfo> getAllTeams() throws Exception {
		// TODO Auto-generated method stub
		return teaminfoDao.getAllTeams();
	}

}
