package web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.Adminuser;
import bean.News;
import bean.Normaluser;
import bean.Schooluser;
import bean.Teaminfo;
import dao.INewsDao;
import dao.INormaluserDao;
import dao.ISchoolDao;
import dao.ISchooluserDao;
import dao.ITeaminfoDao;
import service.IAdminuserService;
import service.ISchooluserService;

public class AdminuserAction extends ActionSupport implements ServletRequestAware {

	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = 961947653152880821L;
	protected HttpServletRequest servletRequest = null;
	Logger logger = Logger.getLogger(AllAction.class);
	private IAdminuserService adminuserService;
	private ISchooluserService schooluserService;
	private INormaluserDao normaluserDao;
	private ISchooluserDao schooluserDao;
	private ISchoolDao schoolDao;
	private ITeaminfoDao teaminfoDao;
	private INewsDao newsDao;
	private String school;
	private String title;
	private String summary;
	private String content;
	private int currentTeam;
	private String id1;
	private String id2;
	private String id3;
	ActionContext context = ActionContext.getContext();

	public String listNormaluser() throws Exception {
		if (school.equals("0")) {
			List<Normaluser> list = normaluserDao.getAllUsers();
			String schoolname = "所有学校";
			context.getSession().put("userlist", list);
			context.getSession().put("schoolname", schoolname);
			return SUCCESS;
		} else {
			List<Normaluser> list = normaluserDao.getNormalusersBySchool(school);
			String schoolname = schoolDao.getSchoolNameByNo(school);
			context.getSession().put("userlist", list);
			context.getSession().put("schoolname", schoolname);
			return SUCCESS;
		}
	}

	public String listSchooluser() throws Exception {
		List<Schooluser> list = schooluserDao.getAllSchoolusers();
		context.getSession().put("schooluserlist", list);
		return SUCCESS;
	}

	public String listTeamsInfo() throws Exception {
		if (school.equals("0")) {
			List<Teaminfo> list = teaminfoDao.getAllTeams();
			String schoolname = "所有学校";
			context.getSession().put("teamslist", list);
			context.getSession().put("schoolname", schoolname);
			return SUCCESS;
		} else {
			List<Teaminfo> list = teaminfoDao.getTeamsBySchool(school);
			String schoolname = schoolDao.getSchoolNameByNo(school);
			context.getSession().put("teamslist", list);
			context.getSession().put("schoolname", schoolname);
			return SUCCESS;
		}
	}

	public String addNews() throws Exception {
		Adminuser user = (Adminuser) context.getSession().get("login");
		System.out.println(content);
		News news = new News();
		news.setTitle(title);
		news.setContent(content);
		news.setSummary(summary);
		news.setAdminuser(user);
		newsDao.save(news);
		return SUCCESS;
	}

	public String showWorkinfo() throws Exception {
		Teaminfo team = teaminfoDao.getTeamInfoByTeamNo(currentTeam);
		context.getSession().put("current", team);
		context.getSession().put("show", "ShowModify");
		String type = (String) context.getSession().get("type");
		switch(type) {
		case "2":return "successschool";
		case "3":return "successadmin";
		}
		return SUCCESS;
	}

	public String viewWorkInfo() throws Exception {
		Teaminfo team = teaminfoDao.getTeamInfoByTeamNo(currentTeam);
		context.getSession().put("current", team);
		Normaluser user1 = normaluserDao.getNormaluserById(id1);
		context.getSession().put("user1", user1);
		Normaluser user2 = normaluserDao.getNormaluserById(id2);
		context.getSession().put("user2", user2);
		Normaluser user3 = normaluserDao.getNormaluserById(id3);
		context.getSession().put("user3", user3);
		context.getSession().put("show", "showStudent");
		String type = (String) context.getSession().get("type");
		switch(type) {
		case "2":return "successschool";
		case "3":return "successadmin";
		}
		return SUCCESS;
	}

	/**
	 * @return the servletRequest
	 */
	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	/**
	 * @param servletRequest
	 *            the servletRequest to set
	 */
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	/**
	 * @return the logger
	 */
	public Logger getLogger() {
		return logger;
	}

	/**
	 * @param logger
	 *            the logger to set
	 */
	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	/**
	 * @return the adminuserService
	 */
	public IAdminuserService getAdminuserService() {
		return adminuserService;
	}

	/**
	 * @param adminuserService
	 *            the adminuserService to set
	 */
	public void setAdminuserService(IAdminuserService adminuserService) {
		this.adminuserService = adminuserService;
	}

	/**
	 * @return the school
	 */
	public String getSchool() {
		return school;
	}

	/**
	 * @param school
	 *            the school to set
	 */
	public void setSchool(String school) {
		this.school = school;
	}

	/**
	 * @return the normaluserDao
	 */
	public INormaluserDao getNormaluserDao() {
		return normaluserDao;
	}

	/**
	 * @param normaluserDao
	 *            the normaluserDao to set
	 */
	public void setNormaluserDao(INormaluserDao normaluserDao) {
		this.normaluserDao = normaluserDao;
	}

	/**
	 * @return the schoolDao
	 */
	public ISchoolDao getSchoolDao() {
		return schoolDao;
	}

	/**
	 * @param schoolDao
	 *            the schoolDao to set
	 */
	public void setSchoolDao(ISchoolDao schoolDao) {
		this.schoolDao = schoolDao;
	}

	/**
	 * @return the schooluserDao
	 */
	public ISchooluserDao getSchooluserDao() {
		return schooluserDao;
	}

	/**
	 * @param schooluserDao
	 *            the schooluserDao to set
	 */
	public void setSchooluserDao(ISchooluserDao schooluserDao) {
		this.schooluserDao = schooluserDao;
	}

	/**
	 * @return the schooluserService
	 */
	public ISchooluserService getSchooluserService() {
		return schooluserService;
	}

	/**
	 * @param schooluserService
	 *            the schooluserService to set
	 */
	public void setSchooluserService(ISchooluserService schooluserService) {
		this.schooluserService = schooluserService;
	}

	/**
	 * @return the teaminfoDao
	 */
	public ITeaminfoDao getTeaminfoDao() {
		return teaminfoDao;
	}

	/**
	 * @param teaminfoDao
	 *            the teaminfoDao to set
	 */
	public void setTeaminfoDao(ITeaminfoDao teaminfoDao) {
		this.teaminfoDao = teaminfoDao;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the summary
	 */
	public String getSummary() {
		return summary;
	}

	/**
	 * @param summary
	 *            the summary to set
	 */
	public void setSummary(String summary) {
		this.summary = summary;
	}

	/**
	 * @return the newsDao
	 */
	public INewsDao getNewsDao() {
		return newsDao;
	}

	/**
	 * @param newsDao
	 *            the newsDao to set
	 */
	public void setNewsDao(INewsDao newsDao) {
		this.newsDao = newsDao;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content
	 *            the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the currentTeam
	 */
	public int getCurrentTeam() {
		return currentTeam;
	}

	/**
	 * @param currentTeam the currentTeam to set
	 */
	public void setCurrentTeam(int currentTeam) {
		this.currentTeam = currentTeam;
	}

	/**
	 * @return the id1
	 */
	public String getId1() {
		return id1;
	}

	/**
	 * @param id1
	 *            the id1 to set
	 */
	public void setId1(String id1) {
		this.id1 = id1;
	}

	/**
	 * @return the id2
	 */
	public String getId2() {
		return id2;
	}

	/**
	 * @param id2
	 *            the id2 to set
	 */
	public void setId2(String id2) {
		this.id2 = id2;
	}

	/**
	 * @return the id3
	 */
	public String getId3() {
		return id3;
	}

	/**
	 * @param id3
	 *            the id3 to set
	 */
	public void setId3(String id3) {
		this.id3 = id3;
	}

}
