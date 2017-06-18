<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String schoolname = (String) session.getAttribute("schoolname");
    if(schoolname == null) {
    	schoolname = "";
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>管理员用户</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/bootstrap.css">
</head>
<body onload="today()">
	<jsp:include page="../UtilPages/header.jsp" />
	<div class="maincontent">
		<div class="container">
			<div class="row clearfix">
				<div class="col-xs-2 column">
					<nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix">
					<ul class="nav bs-docs-sidenav">
						<li>
							<a href="WorksInfo.jsp">删查改报名信息</a>
						</li>
						<li>
							<a href="ListStudent.jsp">查看报名学生信息</a>
						</li>
						<li>
							<a href="adminListSchooluser.action">查看所有学校负责人</a>
						</li>
						<li>
							<a href="AddNews.jsp">新闻发布</a>
						</li>
						<li>
							<a href="EditNews.jsp">新闻编辑</a>
						</li>
						<li>
							<a href="ModifyPassword.jsp">修改密码</a>
						</li>
					</ul>
					</nav>
				</div>
				
				<div class="col-xs-10 column">
					<form class="form-inline" role="form" action="adminlistTeaminfo">
						<div class="form-group">
							<select class="form-control" id="school" name="school">
								<option value="0">所有</option>
								<jsp:include page="../UtilPages/getAllSchool.jsp"></jsp:include>
							</select>
						</div>
						<button type="submit" class="btn btn-default">确认</button>
					</form>
					<h3><%=schoolname%></h3>
					<jsp:include page="../UtilPages/ListAllTeams.jsp"></jsp:include>
				</div>

			</div>
		</div>
	</div>

	<script src="../js/main.js"></script>
</body>

</html>