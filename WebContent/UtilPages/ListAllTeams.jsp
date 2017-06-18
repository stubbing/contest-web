<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String show = (String) session.getAttribute("show");
%>

<script src="<%=basePath%>/js/bootstrap-table.js"></script>
<script src="<%=basePath%>/js/bootstrap-table-zh-CN.js"></script>
<script src="<%=basePath%>/js/initTable.js"></script>
<link href="<%=basePath%>/css/bootstrap-table.css" rel="stylesheet" />
<script src="<%=basePath%>/js/bootstrap-table-export.js"></script>
<script src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>


<div class="panel-body" style="padding-bottom: 0px;">

	<table class="table table-hover" id="showWorksTable">
		<thead>
			<tr>
				<th data-field="teamNo" data-sortable="true">队伍号</th>
				<th data-field="teamName">队名</th>
				<th data-field="worksName">作品名</th>
				<th data-field="types">类型</th>
				<th data-field="school">学校</th>
				<th data-field="teacher">指导老师</th>
				<th data-field="teacherPhone">指导老师电话</th>
				<!-- 在此省略表格列的代码，代码和上面差不多 -->
				<th class="col-xs-2" data-field="action">操作</th>
			</tr>
		</thead>
		<tbody>
			<%
				ResourceBundle res = ResourceBundle.getBundle("school");
				ResourceBundle type = ResourceBundle.getBundle("type");
				List<Teaminfo> teamslist = (List<Teaminfo>) session.getAttribute("teamslist");
				if (teamslist != null) {
					for (Teaminfo n : teamslist) {
						out.print("<tr>");
						out.print("<td>" + n.getId().getTeamNo() + "</td>");
						out.print("<td>" + n.getId().getTeamName() + "</td>");
						out.print("<td>" + n.getId().getWorksName() + "</td>");
						out.print("<td>" + type.getString(n.getId().getTypes()) + "</td>");
						out.print("<td>" + res.getString(n.getId().getSchool()) + "</td>");
						out.print("<td>" + n.getId().getTeacher() + "</td>");
						out.print("<td>" + n.getId().getTeacherPhone() + "</td>");
						out.print("<td><a href=\"viewWorkInfo.action?currentTeam=" + n.getId().getTeamNo() + "&id1="
								+ n.getId().getId1() + "&id2=" + n.getId().getId2() + "&id3=" + n.getId().getId3()
								+ "\">查看</a>&nbsp;");
						out.print("<a href=\"showWorkinfo.action?currentTeam=" + n.getId().getTeamNo() + "\">修改</a>&nbsp;");
						out.print("<a href=\"\">删除</a></td>");
						out.print("</tr>");
					}
				}
				Teaminfo team = (Teaminfo) session.getAttribute("current");
				Normaluser user1 = (Normaluser) session.getAttribute("user1");
				Normaluser user2 = (Normaluser) session.getAttribute("user2");
				Normaluser user3 = (Normaluser) session.getAttribute("user3");
				if (team == null) {
					TeaminfoId teaminfoid = new TeaminfoId();
					team = new Teaminfo();
					team.setId(teaminfoid);
					user1 = new Normaluser();
					user2 = new Normaluser();
					user3 = new Normaluser();
				}
			%>
		</tbody>
	</table>


	<div class="modal fade" id="modify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改队伍信息</h4>
				</div>
				<div class="alert alert-success">
					<h4>报名须知</h4>
					<p>
						1.参赛队员必须属于<strong>同一学校</strong>，且为全日制<strong>本科或专科学校</strong>在读学生
					</p>
					<p>
						2.每一位参赛队员必须先<strong>注册成为普通用户且填写好个人信息</strong>后，方可报名参赛
					</p>
				</div>
				<s:actionerror />
				<s:actionmessage />
				<form class="form-horizontal" role="form" method="post" id="enroll" action="enroll">
					<div class="form-group">
						<label class="col-sm-4 control-label">队名</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="teamname" placeholder="请输入队名"
								required="required" value="<%=team.getId().getTeamName()%>">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">作品名称</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="worksname" placeholder="请输入作品名"
								required="required" value="<%=team.getId().getWorksName()%>">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">作品类别</label>
						<div>
							<label>
								<input type="radio" name="type" id="type" value="1">
								多媒体
							</label>
							<label>
								<input type="radio" name="type" id="type" value="2">
								数据库
							</label>
							<label>
								<input type="radio" name="type" id="type" value="3">
								web网站
							</label>
							<label>
								<input type="radio" name="type" id="type" value="4">
								程序设计
							</label>
							<label>
								<input type="radio" name="type" id="type" value="5">
								企业合作和外包
							</label>
							<label>
								<input type="radio" name="type" id="type" value="6">
								智慧城市
							</label>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">学校</label>
						<div>
							<label class="checkbox-inline">
								<select class="form-control" id="school" name="school">
									<jsp:include page="../UtilPages/getAllSchool.jsp"></jsp:include>
								</select>
							</label>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">队员1身份证</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="id" placeholder="请输入身份证" required="required"
								value="<%=team.getId().getId1()%>">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">队员2身份证</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="id1" placeholder="请输入身份证" required="required"
								value="<%=team.getId().getId2()%>">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label">队员3身份证</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="id2" placeholder="请输入身份证" required="required"
								value="<%=team.getId().getId3()%>">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">指导老师姓名</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="teacher" placeholder="请输入名字"
								required="required" value="<%=team.getId().getTeacher()%>">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">指导老师电话</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="teacherphone" placeholder="请输入电话"
								required="required" value="<%=team.getId().getTeacherPhone()%>">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-4 control-label">作品描述</label>
						<div class="col-sm-7">
							<textarea class="form-control col-sm-4" rows="4" name="description"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<label class="checkbox-inline">
								<input type="submit" value="提交" class="btn btn-default">
							</label>
							<label class="checkbox-inline">
								<input type="reset" value="重置" class="btn btn-default">
							</label>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
</div>

<div class="modal fade" id="showStudent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">显示改队伍信息</h4>
			</div>
			<div class="alert alert-success">
				<h4>队伍信息</h4>
				<label>
					队伍号:<%=team.getId().getTeamName()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					队名:<%=team.getId().getTeamName()%></label>
				<br />
				<label>
					学校:<%=res.getString("" + team.getId().getSchool())%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					作品类型:<%=type.getString("" + team.getId().getTypes())%></label>
				<br />
				<label>
					指导老师:<%=team.getId().getTeacher()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					指导老师联系电话:<%=team.getId().getTeacherPhone()%></label>
				<br />
				<label>
					作品描述:<%=team.getId().getDescription()%></label>
				<br />

				<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
				<h5>队员1</h5>
				<label>
					姓名:<%=user1.getName()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>性别:男</label>
				<br />
				<label>
					学校:<%=res.getString(""+user1.getUniversityNo())%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					年级:<%=res.getString(""+user1.getGrade())%></label>
				<br />
				<label>
					专业:<%=user1.getMajor()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					学院:<%=user1.getCollege()%></label>
				<br />
				<label>
					学号:<%=user1.getSno()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					电话:<%=user1.getPhone()%></label>
				<br />
				<label>
					邮箱:<%=user1.getEmail()%></label>


				<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
				<h5>队员2</h5>
				<label>
					姓名:<%=user2.getName()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>性别:男</label>
				<br />
				<label>
					学校:<%=res.getString("" + user2.getUniversityNo())%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					年级:<%=res.getString("" + user2.getGrade())%></label>
				<br />
				<label>
					专业:<%=user2.getMajor()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					学院:<%=user2.getCollege()%></label>
				<br />
				<label>
					学号:<%=user2.getSno()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					电话:<%=user2.getPhone()%></label>
				<br />
				<label>
					邮箱:<%=user2.getEmail()%></label>


				<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
				<h5>队员3</h5>
				<label>
					姓名:<%=user3.getName()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>性别:男</label>
				<br />
				<label>
					学校:<%=res.getString(""+user3.getUniversityNo())%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					年级:<%=res.getString(""+user3.getGrade())%></label>
				<br />
				<label>
					专业:<%=user3.getMajor()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					学院:<%=user3.getCollege()%></label>
				<br />
				<label>
					学号:<%=user3.getSno()%></label>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
					电话:<%=user3.getPhone()%></label>
				<br />
				<label>
					邮箱:<%=user3.getEmail()%></label>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
var show = "<%=show%>";
	$(function() {
    if (show == "ShowModify") {
	    $('#modify').modal({
		keyboard : true
	    })
	}
    else if (show == "showStudent") {
	    $('#showStudent').modal({
		keyboard : true
	    })
    }
	$(":radio[name='type'][value='<%=team.getId().getTypes()%>']").prop("checked", "checked");
		$("#school option[value='<%=team.getId().getSchool()%>']").attr("selected","selected");
		});
	 document.getElementsByName("description")[0].value="<%=team.getId().getDescription()%>";
</script>

<%
	session.removeAttribute("show");
%>
