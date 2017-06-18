package web;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.Normaluser;
import bean.Teaminfo;
import bean.TeaminfoId;
import dao.ITeamDao;
import dao.ITeaminfoDao;
import dao.IWorksDao;
import service.INormaluserService;

public class NormaluserAction extends ActionSupport implements ServletRequestAware {

	/**
	 * @Fields serialVersionUID : TODO
	 */
	private static final long serialVersionUID = -7239588160980866877L;
	private INormaluserService normaluserService;
	private ITeamDao teamDao;
	private IWorksDao worksDao;
	private ITeaminfoDao teaminfoDao;
	protected HttpServletRequest servletRequest = null;
	Logger logger = Logger.getLogger(AllAction.class);
	ActionContext context = ActionContext.getContext();
	private String name;
	private int sex;
	private String major;
	private String college;
	private String school;
	private String grade;
	private String id;
	private String sno;
	private String phone;
	private String email;
	private String teamname;
	private String worksname;
	private String type;
	private String id1;
	private String id2;
	private String teacher;
	private String teacherphone;
	private String description;

	public String fillInfo() throws Exception {
		Normaluser user = (Normaluser) context.getSession().get("login");
		if (user != null) {
			user.setName(name);
			user.setSex(sex);
			user.setCollege(college);
			user.setEmail(email);
			user.setGrade(grade);
			user.setMajor(major);
			user.setUniversityNo(school);
			user.setSno(sno);
			user.setId(id);
			user.setPhone(phone);
			normaluserService.save(user);
			addActionMessage("修改成功");
			return SUCCESS;
		} else {
			addActionError("登录异常");
			return INPUT;
		}
	}

	public String enrollComp() throws Exception {
		String types = (String) context.getSession().get("type");
		TeaminfoId infoid = new TeaminfoId();
		Teaminfo team = new Teaminfo();
		if (types.equals("1")) {
			/**
			 * is a normaluser,get the teaminfo by this student's id,and then
			 * check whether is an insertion or a modification
			 */
			team = teaminfoDao.getTeamInfoById(id);
			if (team == null) {
				/**
				 * no teaminfo record,is an insertion,do not need to set
				 * teamno,and need to validate the information before insert
				 * into the database
				 */
				if (teamDao.getTeamByName(teamname) != null) {
					addActionError("队名已存在");
					return INPUT;
				}
				if (worksDao.getWorksByName(worksname) != null) {
					addActionError("作品名已存在");
					return INPUT;
				}
				if (isEnroll(id, id1, id2)) {
					addActionError("请确保3个队员都没有注册过其他队伍");
					return INPUT;
				}
			} else {
				// already has record,is modification,set a teamno
				infoid.setTeamNo(teaminfoDao.getTeamNoById(id));
			}
		} else {
			/**
			 * is schooluser or adminuser,just modification the teaminfo
			 */
			team = teaminfoDao.getTeamInfoById(id);
			infoid=team.getId();
		}
		boolean isIdValid = normaluserService.getUserById(id) != null && normaluserService.getUserById(id1) != null
				&& normaluserService.getUserById(id2) != null;
		if (!isIdValid) {
			addActionError("找不到队员信息，请确保3名参赛队员已经注册并填写完成个人信息");
			return INPUT;
		}
		infoid.setWorksName(worksname);
		infoid.setTeacher(teacher);
		infoid.setTeacherPhone(teacherphone);
		infoid.setTeamName(teamname);
		infoid.setTypes(type);
		infoid.setSchool(school);
		infoid.setDescription(description);
		infoid.setId1(id);
		infoid.setId2(id1);
		infoid.setId3(id2);
		team.setId(infoid);
		normaluserService.enroll(team);
		switch(types) {
		case "1":return "successnormal";
		case "2":return "successschool";
		case "3":return "successadmin";
		}
		return null;
	}

	private boolean isEnroll(String id, String id1, String id2) throws Exception {
		return normaluserService.getUserById(id).getTeamNo() != null
				|| normaluserService.getUserById(id1).getTeamNo() != null
				|| normaluserService.getUserById(id2).getTeamNo() != null;
	}

	public String initEnroll() throws Exception {
		Normaluser user = (Normaluser) context.getSession().get("login");
		Teaminfo team = teaminfoDao.getTeamInfoById(user.getId());
		context.getSession().put("team", team);
		return SUCCESS;
	}

	/**
	 * @return the normaluserService
	 */
	public INormaluserService getNormaluserService() {
		return normaluserService;
	}

	/**
	 * @param normaluserService
	 *            the normaluserService to set
	 */
	public void setNormaluserService(INormaluserService normaluserService) {
		this.normaluserService = normaluserService;
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
	 * @return the context
	 */
	public ActionContext getContext() {
		return context;
	}

	/**
	 * @param context
	 *            the context to set
	 */
	public void setContext(ActionContext context) {
		this.context = context;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the sex
	 */
	public int getSex() {
		return sex;
	}

	/**
	 * @param sex
	 *            the sex to set
	 */
	public void setSex(int sex) {
		this.sex = sex;
	}

	/**
	 * @return the major
	 */
	public String getMajor() {
		return major;
	}

	/**
	 * @param major
	 *            the major to set
	 */
	public void setMajor(String major) {
		this.major = major;
	}

	/**
	 * @return the college
	 */
	public String getCollege() {
		return college;
	}

	/**
	 * @param college
	 *            the college to set
	 */
	public void setCollege(String college) {
		this.college = college;
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
	 * @return the grade
	 */
	public String getGrade() {
		return grade;
	}

	/**
	 * @param grade
	 *            the grade to set
	 */
	public void setGrade(String grade) {
		this.grade = grade;
	}

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the sno
	 */
	public String getSno() {
		return sno;
	}

	/**
	 * @param sno
	 *            the sno to set
	 */
	public void setSno(String sno) {
		this.sno = sno;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone
	 *            the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
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
	 * @param servletRequest
	 *            the servletRequest to set
	 */
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	/**
	 * @return the teamname
	 */
	public String getTeamname() {
		return teamname;
	}

	/**
	 * @param teamname
	 *            the teamname to set
	 */
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}

	/**
	 * @return the worksname
	 */
	public String getWorksname() {
		return worksname;
	}

	/**
	 * @param worksname
	 *            the worksname to set
	 */
	public void setWorksname(String worksname) {
		this.worksname = worksname;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(String type) {
		this.type = type;
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
	 * @return the teacher
	 */
	public String getTeacher() {
		return teacher;
	}

	/**
	 * @param teacher
	 *            the teacher to set
	 */
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	/**
	 * @return the teacherphone
	 */
	public String getTeacherphone() {
		return teacherphone;
	}

	/**
	 * @param teacherphone
	 *            the teacherphone to set
	 */
	public void setTeacherphone(String teacherphone) {
		this.teacherphone = teacherphone;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the teamDao
	 */
	public ITeamDao getTeamDao() {
		return teamDao;
	}

	/**
	 * @param teamDao
	 *            the teamDao to set
	 */
	public void setTeamDao(ITeamDao teamDao) {
		this.teamDao = teamDao;
	}

	/**
	 * @return the worksDao
	 */
	public IWorksDao getWorksDao() {
		return worksDao;
	}

	/**
	 * @param worksDao
	 *            the worksDao to set
	 */
	public void setWorksDao(IWorksDao worksDao) {
		this.worksDao = worksDao;
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

}
