package dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import bean.News;
import bean.Schooluser;
import dao.INewsDao;

public class NewsDaoImpl extends HibernateDaoSupport implements INewsDao {

	@Override
	public void save(News news) throws Exception {
		// TODO Auto-generated method stub
		getHibernateTemplate().saveOrUpdate(news);
	}

	@Override
	public List<News> getAllNews() throws Exception {
		// TODO Auto-generated method stub
		String hql = "from News";
		Session session = null;
		List<News> list = new ArrayList<News>();
		try {
			session = getSession();
			list = (List<News>) session.createQuery(hql).list();
		} finally {
			releaseSession(session);
		}
		return list;
	}

	@Override
	public News getNewsById(int id) throws Exception {
		// TODO Auto-generated method stub
		String hql = "from News where newsId=?";
		Session session = null;
		News news = null;
		try {
			session = getSession();
			news = (News) session.createQuery(hql).setParameter(0, id).uniqueResult();
		} finally {
			releaseSession(session);
		}
		return news;
	}

}
