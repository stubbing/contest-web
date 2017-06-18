package dao.impl;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.School;
import dao.ISchoolDao;

public class SchoolDaoImpl extends HibernateDaoSupport implements ISchoolDao {

	@Override
	public String getSchoolNameByNo(String school) throws Exception {
		// TODO Auto-generated method stub
		String hql;
		hql = "from School where universityNo=?";
		Session session = null;
		School user = null;
		try {
			session = getSession();
			user = (School) session.createQuery(hql).setParameter(0, school).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return user.getUniversityName();
	}

}
