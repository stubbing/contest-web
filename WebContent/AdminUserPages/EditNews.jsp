<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="en">
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

			</div>
		</div>
	</div>

	<script src="../js/main.js"></script>
</body>

</html>