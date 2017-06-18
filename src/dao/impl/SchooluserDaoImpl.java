package dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.Normaluser;
import bean.Schooluser;
import dao.ISchooluserDao;

public class SchooluserDaoImpl extends HibernateDaoSupport implements ISchooluserDao {

	@Override
	public Schooluser getSchooluserByUserid(String id) throws Exception {
		// TODO Auto-generated method stub
		String hql;
		hql = "from Schooluser where schooluserId=?";
		Session session = null;
		Schooluser user = null;
		try {
			session = getSession();
			user = (Schooluser) session.createQuery(hql).setParameter(0, id).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return user;
	}

	@Override
	public Schooluser getByLoginAndPassword(String login, String password) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Schooluser where schooluserId=? and password=?";
		Session session = null;
		Schooluser user = null;
		try {
			session = getSession();
			user = (Schooluser) session.createQuery(hql).setParameter(0, login).setParameter(1, password)
					.uniqueResult();
		} finally {
			releaseSession(session);
		}
		return user;
	}

	@Override
	public void save(Schooluser user) throws Exception {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(user);
	}

	@Override
	public List<Schooluser> getAllSchoolusers() throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Schooluser";
		Session session = null;
		List<Schooluser> list = new ArrayList<Schooluser>();
		try {
			session = getSession();
			list = (List<Schooluser>) session.createQuery(hql).list();
		} finally {
			releaseSession(session);
		}
		return list;
	}

}
