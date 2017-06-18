<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@page import="dao.impl.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String schoolname = (String) session.getAttribute("schoolname");
	if(schoolname == null) {
		schoolname="";
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>学校负责人</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="<%=basePath%>/css/style.css">
<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.css">
</head>
<body onload="today()">
	<jsp:include page="../UtilPages/header.jsp"></jsp:include>
	<div class="maincontent">
		<div class="container">
			<div class="row clearfix">
				<div class="col-xs-2 column">
					<nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix">
						<ul class="nav bs-docs-sidenav">
							<li>
								<a href="schoolListTeaminfo.action">删查改报名信息</a>
							</li>
							<li>
								<a href="list.action">查看报名学生信息</a>
							</li>
							<li>
								<a href="<%=basePath%>/SchoolUserPages/ModifyPassword.jsp">修改密码</a>
							</li>
						</ul>
					</nav>
				</div>


				<div class="col-xs-10 column">
				<h3><%=schoolname %></h3>
					<jsp:include page="../UtilPages/ListAllStudents.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
	


	<script src="<%=basePath%>/js/main.js"></script>
</body>

</html>