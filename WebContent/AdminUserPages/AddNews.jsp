<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>管理员用户</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- 配置文件 -->
<script type="text/javascript" src="../UEditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="../UEditor/ueditor.all.js"></script>
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

				<div class="col-xs-8 column">
					<form class="form-horizontal" role="form" method="post" action="addNews">
						<div class="form-group">
							<label>题目</label>
							<input type="text" class="form-control" name="title" placeholder="请输入题目">
						</div>
						<div class="form-group">
							<label>简介</label>
							<input type="text" class="form-control" name="summary" placeholder="请输入简介"
								required="required">
						</div>
						<div class="form-group">
							<label>正文</label>
							<script id="container" name="content"></script>
							<script type="text/javascript">
				var ue = UE.getEditor('container');
			    </script>
						</div>
						<input name="info" type="hidden" id="info">
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
		</div>
	</div>

	<script src="../js/main.js"></script>
	
	
</body>

</html>