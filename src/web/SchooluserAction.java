package web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.Normaluser;
import bean.Schooluser;
import bean.Teaminfo;
import dao.ISchoolDao;
import service.ISchooluserService;

public class SchooluserAction  extends ActionSupport implements ServletRequestAware {
	
	/** 
	* @Fields serialVersionUID : TODO
	*/
	private static final long serialVersionUID = -7135443697546132416L;
	private ISchooluserService schooluserService;
	private ISchoolDao schoolDao;
	protected HttpServletRequest servletRequest = null;
	Logger logger = Logger.getLogger(AllAction.class);
	ActionContext context = ActionContext.getContext();
	
	public String listAll() throws Exception {
		Schooluser school = (Schooluser) context.getSession().get("login");
		List<Normaluser> list = schooluserService.getUsersBySchool(school.getSchooluserId());
		String schoolname = schoolDao.getSchoolNameByNo(school.getSchooluserId());
		context.getSession().put("userlist", list);
		context.getSession().put("schoolname", schoolname);
		return SUCCESS;
	}
	
	public String listTeaminfo() throws Exception {
		Schooluser school = (Schooluser) context.getSession().get("login");
		List<Teaminfo> list = schooluserService.getTeaminfoBySchool(school.getSchooluserId());
		context.getSession().put("teamslist", list);
		return SUCCESS;
	}

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		// TODO Auto-generated method stub
		this.servletRequest = servletRequest;
	}

	/**
	 * @return the schooluserService
	 */
	public ISchooluserService getSchooluserService() {
		return schooluserService;
	}

	/**
	 * @param schooluserService the schooluserService to set
	 */
	public void setSchooluserService(ISchooluserService schooluserService) {
		this.schooluserService = schooluserService;
	}

	/**
	 * @return the logger
	 */
	public Logger getLogger() {
		return logger;
	}

	/**
	 * @param logger the logger to set
	 */
	public void setLogger(Logger logger) {
		this.logger = logger;
	}

	/**
	 * @return the context
	 */
	public ActionContext getContext() {
		return context;
	}

	/**
	 * @param context the context to set
	 */
	public void setContext(ActionContext context) {
		this.context = context;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * @return the servletRequest
	 */
	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	/**
	 * @return the schoolDao
	 */
	public ISchoolDao getSchoolDao() {
		return schoolDao;
	}

	/**
	 * @param schoolDao the schoolDao to set
	 */
	public void setSchoolDao(ISchoolDao schoolDao) {
		this.schoolDao = schoolDao;
	}
	
}
