package dao.impl;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.Adminuser;
import bean.Team;
import bean.Works;
import dao.IWorksDao;

public class WorksDaoImpl extends HibernateDaoSupport implements IWorksDao {

	@Override
	public void save(Works works) throws Exception {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(works);
	}

	@Override
	public Works getWorksByName(String name) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from Works where worksName=?";
		Session session = null;
		Works works = null;
		try {
			session = getSession();
			works = (Works) session.createQuery(hql).setParameter(0, name).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return works;
	}
	
	@Override
	public Works getWorksByTeamNo(int teamno) throws Exception {
		String hql = "from Team where teamNo=?";
		Session session = null;
		Team team = null;
		try {
			session = getSession();
			team = (Team) session.createQuery(hql).setParameter(0, teamno).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return team.getWorks();
	}
	
	

}
