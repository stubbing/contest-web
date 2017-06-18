package service.impl;

import bean.Adminuser;
import dao.IAdminuserDao;
import dao.ITeaminfoDao;
import service.IAdminuserService;

public class AdminuserServiceImpl implements IAdminuserService {
	private IAdminuserDao adminDao;
	private ITeaminfoDao teaminfoDao;
	
	@Override
	public Adminuser getUserByLoginAndPassword(String login, String password) throws Exception {
		// TODO Auto-generated method stub
		boolean isValid = login != null && password != null;
		if(!isValid) {
			return null;
		}
		return adminDao.getByLoginAndPassword(login, password);
	}
	
	/**
	 * @return the adminDao
	 */
	public IAdminuserDao getAdminDao() {
		return adminDao;
	}

	/**
	 * @param adminDao the adminDao to set
	 */
	public void setAdminDao(IAdminuserDao adminDao) {
		this.adminDao = adminDao;
	}


	@Override
	public void save(Adminuser user) throws Exception {
		// TODO Auto-generated method stub
		if(user != null) {
			adminDao.save(user);
		}
	}

	@Override
	public Adminuser gerUserByUserid(String id) throws Exception {
		// TODO Auto-generated method stub
		return adminDao.getAdminuserByUserid(id);
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

}
