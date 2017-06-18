<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="bean.Normaluser"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<script src="<%=basePath%>/js/bootstrap-table.js"></script>
<script src="<%=basePath%>/js/bootstrap-table-zh-CN.js"></script>
<script src="<%=basePath%>/js/initTable.js"></script>
<link href="<%=basePath%>/css/bootstrap-table.css" rel="stylesheet" />
<script src="<%=basePath%>/js/bootstrap-table-export.js"></script>
<script src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>

<div class="panel-body" style="padding-bottom: 0px;">
	
	<table class="table table-hover" id="showWorksTable" >
		<thead>
			<tr>
				<th data-field="userId">用户名</th>
				<th data-field="name">姓名</th>
				<th data-field="sex">性别</th>
				<th data-field="phone">电话</th>
				<th data-field="email">EMAIL</th>
				<th data-field="school">学校</th>
				<th data-field="grade">年级</th>
				<th data-field="major">专业</th>
				<th data-field="college">学院</th>
				<th data-field="sno">学号</th>
				<th data-field="teamno">参赛队伍</th>
				<th data-field="action">操作</th>
			</tr>
		</thead>
		<tbody>
			<%
				ResourceBundle res = ResourceBundle.getBundle("school");
				List<Normaluser> userlist = (List<Normaluser>) session.getAttribute("userlist");
				System.out.println(userlist);
				String sex = null, teamno = null;
				if (userlist != null) {
					for (Normaluser n : userlist) {
						out.print("<tr>");
						out.print("<td>" + n.getUserId() + "</td>");
						out.print("<td>" + n.getName() + "</td>");
						switch (""+n.getSex()) {
						case "1":
							sex = "男";
							break;
						case "2":
							sex = "女";
							break;
						default: sex="";
						}
						out.print("<td>" + sex + "</td>");
						out.print("<td>" + n.getPhone() + "</td>");
						out.print("<td>" + n.getEmail() + "</td>");
						out.print("<td>" + res.getString(n.getUniversityNo()) + "</td>");
						out.print("<td>" + res.getString(n.getGrade()) + "</td>");
						out.print("<td>" + n.getMajor() + "</td>");
						out.print("<td>" + n.getCollege() + "</td>");
						out.print("<td>" + n.getSno() + "</td>");
						if (n.getTeamNo() == null) {
							teamno = "未报名";
						} else {
							teamno = ""+ n.getTeamNo();
						}
						out.print("<td>" + teamno + "</td>");
						out.print("<td><a>修改</a></td>");
						out.print("</tr>");
					}
				}
			%>
		</tbody>
	</table>
</div>