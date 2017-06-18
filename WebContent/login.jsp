<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>登录</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>

<body onload="today()">
	<div class="container">
		<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
			<div class="navbar-header ">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" name="date"></a>
			</div>
			<div class="collapse navbar-collapse menubar-left">
				<ul class="nav navbar-nav">
					<li class="active">
						<a href="index.jsp">
							<span class="glyphicon glyphicon-home">首页</span>
						</a>
					</li>
					<li>
						<a href="news.jsp">
							<span class="glyphicon glyphicon glyphicon-lock">比赛新闻</span>
						</a>
					</li>
					<li>
						<a href="info.jsp">
							<span class="glyphicon glyphicon-book">比赛信息</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- /.nav-collapse -->
		</div>
	</div>

	<div class="maincontent login-size">
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-5 column">
					<div class="row clearfix">
						<div class="col-md-12 column">
							<h2 class="text-center">登录</h2>
						</div>
					</div>
					<s:actionerror/>
					<s:actionmessage/>
					<s:form  method="POST" class="form-horizontal" role="form" action="login">
					<s:fielderror></s:fielderror>
						<div class="form-group text-center">
							<label class="col-sm-3 control-label">用户名:</label>
							<div class="col-sm-8 text-center">
								<input type="text" class="form-control" name="loginuser" required="required" />
							</div>
						</div>
						<div class="form-group text-center">
							<label class="col-sm-3 control-label">密码:</label>
							<div class="col-sm-8 text-center">
								<input type="password" class="form-control" name="password" required="required" />
							</div>
						</div>
						<div class="form-group text-center">
							<label class="col-sm-3 control-label">类别：</label>
							<div>
								<label>
									<input type="radio" name="type" value="1" checked>
									普通用户
								</label>
								<label>
									<input type="radio" name="type" value="2">
									学校负责人
								</label>
								<label>
									<input type="radio" name="type" value="3">
									管理员用户
								</label>
							</div>
						</div>
						<div class="col-sm-offset-2 col-sm-10">
							<label class="checkbox-inline">
								 <input type="submit" value="登录"  class="btn btn-default">
							</label>
							<label class="checkbox-inline">
								<input type="reset" value="重置"  class="btn btn-default">
							</label>
							<label class="checkbox-inline">
								<a href="regist.jsp" style="color: black;">
									<input type="button" value="注册"  class="btn btn-default" >
								</a>
							</label>
							<label class="checkbox-inline">
								<a href="index.jsp" style="color: black;">
									<input type="button" value="返回"  class="btn btn-default">
								</a>
							</label>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery (Bootstrap 插件需要引入) -->
	<script src="js/jquery.min.js"></script>
	<!-- 包含了所有编译插件 -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>