package dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.Adminuser;
import bean.Teaminfo;
import dao.ITeaminfoDao;

public class TeaminfoDaoImpl extends HibernateDaoSupport implements ITeaminfoDao {

	@Override
	public List<Teaminfo> getTeamsBySchool(String school) throws Exception {
		// TODO Auto-generated method stub
		String hql;
		hql = "from Teaminfo t where t.id.school=?";
		Session session = null;
		List<Teaminfo> list = null;
		try {
			session = getSession();
			list =  (List<Teaminfo>) session.createQuery(hql).setParameter(0, school).list();
		} finally {
			releaseSession(session);
		}
		return list;
	}
	
	@Override
	public List<Teaminfo> getAllTeams() throws Exception {
		// TODO Auto-generated method stub
		String hql;
		hql = "from Teaminfo";
		Session session = null;
		List<Teaminfo> list = null;
		try {
			session = getSession();
			list =  (List<Teaminfo>)session.createQuery(hql).list();
		} finally {
			releaseSession(session);
		}
		return list;
	}

	@Override
	public Teaminfo getTeamInfoById(String id) throws Exception {
		// TODO Auto-generated method stub
		String hql;
		hql = "from Teaminfo t where t.id.id1=?";
		Session session = null;
		Teaminfo team = null;
		try {
			session = getSession();
			team =  (Teaminfo) session.createQuery(hql).setParameter(0, id).uniqueResult();
		} finally {
			releaseSession(session);
		}
		if (team != null) {
			return team;
		}
		hql = "from Teaminfo t where t.id.id2=?";
		try {
			session = getSession();
			team =  (Teaminfo) session.createQuery(hql).setParameter(0, id).uniqueResult();
		} finally {
			releaseSession(session);
		}
		if (team != null) {
			return team;
		}
		hql = "from Teaminfo t where t.id.id3=?";
		try {
			session = getSession();
			team =  (Teaminfo) session.createQuery(hql).setParameter(0, id).uniqueResult();
		} finally {
			releaseSession(session);
		}
		if (team != null) {
			return team;
		}
		return null;
	}

	@Override
	public Teaminfo getTeamInfoByTeamNo(int teamno) throws Exception {
		// TODO Auto-generated method stub
		String hql;
		hql = "from Teaminfo t where t.id.teamNo=?";
		Session session = null;
		Teaminfo team = null;
		try {
			session = getSession();
			team =  (Teaminfo) session.createQuery(hql).setParameter(0, teamno).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return team;
	}

	@Override
	public int getTeamNoById(String id) throws Exception {
		// TODO Auto-generated method stub
		String hql;
		hql = "from Teaminfo t where t.id.id1=?";
		Session session = null;
		Teaminfo team = null;
		try {
			session = getSession();
			team =  (Teaminfo) session.createQuery(hql).setParameter(0, id).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return team.getId().getTeamNo();
	}
	
	

}
