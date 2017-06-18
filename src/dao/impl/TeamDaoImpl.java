package dao.impl;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.Adminuser;
import bean.Team;
import dao.ITeamDao;

public class TeamDaoImpl extends HibernateDaoSupport implements ITeamDao {

	@Override
	public void save(Team team) throws Exception {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(team);
	}

	@Override
	public Team getTeamByName(String name) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Team where teamName=?";
		Session session = null;
		Team team = null;
		try {
			session = getSession();
			team = (Team) session.createQuery(hql).setParameter(0, name).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return team;
	}

	@Override
	public Team getTeamByTeamNo(int teamno) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Team where teamNo=?";
		Session session = null;
		Team team = null;
		try {
			session = getSession();
			team = (Team) session.createQuery(hql).setParameter(0, teamno).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return team;
	}

}
