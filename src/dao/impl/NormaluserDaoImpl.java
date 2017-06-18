package dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import bean.Normaluser;
import dao.INormaluserDao;

public class NormaluserDaoImpl extends HibernateDaoSupport implements INormaluserDao {

	@Override
	public void save(Normaluser user) throws Exception {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(user);
	}

	@Override
	public Normaluser getNormaluserById(String id) {
		String hql = "from Normaluser where id=?";
		Session session = null;
		Normaluser user = null;
		try {
			session = getSession();
			user = (Normaluser) session.createQuery(hql).setParameter(0, id).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return user;
	}

	@Override
	public Normaluser getNormaluserByUserid(String userId) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Normaluser where userId=?";
		Session session = null;
		Normaluser user = null;
		try {
			session = getSession();
			user = (Normaluser) session.createQuery(hql).setParameter(0, userId).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return user;
	}

	@Override
	public Normaluser getByLoginAndPasswrod(String login, String password) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Normaluser where userId=? and password=?";
		Session session = null;
		Normaluser user = null;
		try {
			session = getSession();
			user = (Normaluser) session.createQuery(hql).setParameter(0, login).setParameter(1, password)
					.uniqueResult();
		} finally {
			releaseSession(session);
		}
		return user;
	}

	@Override
	public List<Normaluser> getNormalusersBySchool(String school) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Normaluser where universityNo=?";
		Session session = null;
		List<Normaluser> list = new ArrayList<Normaluser>();
		try {
			session = getSession();
			list = (List<Normaluser>) session.createQuery(hql).setParameter(0, school).list();
		} finally {
			releaseSession(session);
		}
		return list;
	}

	@Override
	public List<Normaluser> getAllUsers() throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Normaluser";
		Session session = null;
		List<Normaluser> list = new ArrayList<Normaluser>();
		try {
			session = getSession();
			list = (List<Normaluser>) session.createQuery(hql).list();
		} finally {
			releaseSession(session);
		}
		return list;
	}

}
