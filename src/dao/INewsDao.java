package dao;

import java.util.List;

import bean.News;

public interface INewsDao {
	
	void save(News news) throws Exception;
	
	List<News> getAllNews() throws Exception;
	
	News getNewsById(int id) throws Exception;

}
