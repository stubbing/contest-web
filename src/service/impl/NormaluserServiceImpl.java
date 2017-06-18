package service.impl;

import bean.Adminuser;
import bean.Normaluser;
import bean.Schooluser;
import bean.Team;
import bean.Teaminfo;
import bean.Works;
import dao.IAdminuserDao;
import dao.INormaluserDao;
import dao.ISchooluserDao;
import dao.ITeamDao;
import dao.IWorksDao;
import service.INormaluserService;

public class NormaluserServiceImpl implements INormaluserService {
	private INormaluserDao normaluserDao;
	private ISchooluserDao schooluserDao;
	private IAdminuserDao adminDao;
	private ITeamDao teamDao;
	private IWorksDao worksDao;

	/**
	 * @return the adminDao
	 */
	public IAdminuserDao getAdminDao() {
		return adminDao;
	}

	/**
	 * @param adminDao
	 *            the adminDao to set
	 */
	public void setAdminDao(IAdminuserDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public void save(Normaluser user) throws Exception {
		// TODO Auto-generated method stub
		if (user != null) {
			normaluserDao.save(user);
		}
	}

	/**
	 * @Method: enroll
	 * @Description: finish the contest enrollment function,insert the data into
	 *               3 different tables.
	 * @param team
	 *            the view which is from the input user
	 * @throws Exception
	 * @see service.INormaluserService#enroll(bean.Teaminfo)
	 */
	@Override
	public void enroll(Teaminfo team) throws Exception {
		// TODO Auto-generated method stub
		/**
		 * change table WorksInfo,set description,shooluser,types and worksname
		 */
		System.out.println(team.getId().getTeamNo());
		Works works = worksDao.getWorksByTeamNo(team.getId().getTeamNo());
		if (works == null) {
			// is add
			works = new Works();
		}
		works.setDescription(team.getId().getDescription());
		Schooluser school = schooluserDao.getSchooluserByUserid(team.getId().getSchool());
		works.setSchooluser(school);
		works.setTypes(team.getId().getTypes());
		works.setWorksName(team.getId().getWorksName());
		Adminuser admin = adminDao.getAdminuserByUserid("31001");
		works.setAdminuser(admin);
		worksDao.save(works);
		/**
		 * change table Team,set team name,teacher,teacher_phone
		 */
		Team t = teamDao.getTeamByTeamNo(team.getId().getTeamNo());
		if (t == null) {
			t = new Team();
		}
		t.setTeacher(team.getId().getTeacher());
		t.setTeacherPhone(team.getId().getTeacherPhone());
		t.setTeamName(team.getId().getTeamName());
		t.setWorks(works);
		teamDao.save(t);
		/** change table Normaluser,set each students with a team_no */
		String[] id = new String[3];
		id[0] = team.getId().getId1();
		id[1] = team.getId().getId2();
		id[2] = team.getId().getId3();
		for (int i = 0; i < id.length; i++) {
			Normaluser user = normaluserDao.getNormaluserById(id[i]);
			user.setTeamNo(t.getTeamNo());
			normaluserDao.save(user);
		}
	}

	@Override
	public void modifyPassword(String user, String password) throws Exception {
		// TODO Auto-generated method stub
		Normaluser input = normaluserDao.getNormaluserByUserid(user);
		input.setPassword(password);
		normaluserDao.save(input);
	}

	@Override
	public Normaluser getUserByLoginAndPassword(String login, String password) throws Exception {
		// TODO Auto-generated method stub
		boolean isValid = login != null && password != null;
		if (!isValid) {
			return null;
		}
		return normaluserDao.getByLoginAndPasswrod(login, password);
	}

	@Override
	public void addUser(Normaluser user) throws Exception {
		// TODO Auto-generated method stub
		boolean isValid = user != null && user.getUserId() != null
				|| !"".equals(user.getUserId()) && user.getPassword() != null && "".equals(user.getPassword());
		if (!isValid) {
			return;
		}
		normaluserDao.save(user);
	}

	@Override
	public boolean isLoginValid(String login) throws Exception {
		// TODO Auto-generated method stub
		Normaluser user = normaluserDao.getNormaluserByUserid(login);
		if (user != null) {
			return false;
		} else {
			return true;
		}
	}

	/**
	 * @return the normaluserDao
	 */
	public INormaluserDao getNormaluserDao() {
		return normaluserDao;
	}

	/**
	 * @param normaluserDao
	 *            the normaluserDao to set
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
	 * @param schoolDao
	 *            the schoolDao to set
	 */
	public void setSchooluserDao(ISchooluserDao schoolDao) {
		this.schooluserDao = schoolDao;
	}

	/**
	 * @return the teamDao
	 */
	public ITeamDao getTeamDao() {
		return teamDao;
	}

	/**
	 * @param teamDao
	 *            the teamDao to set
	 */
	public void setTeamDao(ITeamDao teamDao) {
		this.teamDao = teamDao;
	}

	/**
	 * @return the worksDao
	 */
	public IWorksDao getWorksDao() {
		return worksDao;
	}

	/**
	 * @param worksDao
	 *            the worksDao to set
	 */
	public void setWorksDao(IWorksDao worksDao) {
		this.worksDao = worksDao;
	}

	@Override
	public Normaluser getUserById(String id) throws Exception {
		// TODO Auto-generated method stub
		if (id != null && !id.equals("")) {
			return normaluserDao.getNormaluserById(id);
		} else {
			return null;
		}
	}

}
