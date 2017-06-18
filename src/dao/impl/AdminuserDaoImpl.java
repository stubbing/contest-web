package dao.impl;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.Adminuser;
import dao.IAdminuserDao;

public class AdminuserDaoImpl extends HibernateDaoSupport implements IAdminuserDao {

	@Override
	public Adminuser getAdminuserByUserid(String id) throws Exception {
		// TODO Auto-generated method stub
		String hql;
		hql = "from Adminuser where adminId=?";
		Session session = null;
		Adminuser user = null;
		try {
			session = getSession();
			user = (Adminuser) session.createQuery(hql).setParameter(0, id).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return user;
	}

	@Override
	public Adminuser getByLoginAndPassword(String login, String password) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Adminuser where adminId=? and password=?";
		Session session = null;
		Adminuser user = null;
		try {
			session = getSession();
			user = (Adminuser) session.createQuery(hql).setParameter(0, login).setParameter(1, password)
					.uniqueResult();
		} finally {
			releaseSession(session);
		}
		return user;
	}

	@Override
	public void save(Adminuser user) throws Exception {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(user);
	}

}
