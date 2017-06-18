<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="bean.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String type = (String) session.getAttribute("type");
	String loginName = null;
	if (type != null) {
		switch (type) {
			case "1" :
				Normaluser normaluser = (Normaluser) session.getAttribute("login");
				loginName = normaluser.getUserId();
				break;
			case "2" :
				Schooluser schooluser = (Schooluser) session.getAttribute("login");
				loginName = schooluser.getName();
				break;
			case "3" :
				Adminuser adminuser = (Adminuser) session.getAttribute("login");
				loginName = adminuser.getName();
				break;
		}
	}
%>
<div class="container">
	<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
		<div class="navbar-header ">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#" name="date"></a>
		</div>
		<div class="collapse navbar-collapse menubar-left">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="<%=basePath%>/index.jsp">
						<span class="glyphicon glyphicon-home">首页</span>
					</a>
				</li>
				<li>
					<a href="listNews.action">
						<span class="glyphicon glyphicon glyphicon-lock">比赛新闻</span>
					</a>
				</li>
				<li>
					<a href="<%=basePath%>/info.jsp">
						<span class="glyphicon glyphicon-book">比赛信息</span>
					</a>
				</li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
		<div class="btn-group menubar-right">
			<button id="login" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				注册/登录 <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li>
					<a href="<%=basePath%>/regist.jsp" id="item1">注册</a>
				</li>
				<li>
					<a href="<%=basePath%>/login.jsp" id="item2">登录</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
    var type =<%=type%>;
	var loginname = "<%=loginName%>";
    if (loginname != null && type != null) {
	var node = document.getElementById("login");
	var item1 = document.getElementById("item1");
	var item2 = document.getElementById("item2");
	node.innerHTML = "当前用户："+loginname;
	item1.innerHTML = "管理";
	switch (type) {
	case 1:
	    item1.setAttribute("href", "<%=basePath%>/NormalUserPages/NormalUser.jsp");
	    break;
	case 2:
	    item1.setAttribute("href", "<%=basePath%>/SchoolUserPages/SchoolUser.jsp");
	    break;
	case 3:
	    item1.setAttribute("href", "<%=basePath%>/AdminUserPages/AdminUser.jsp");
	    break;
	}
	item2.innerHTML="退出登录";
	item2.setAttribute("href", "<%=basePath%>/logout");
    }
</script>
<script src="<%=basePath%>/js/jquery.min.js"></script>
<!-- 包含了所有编译插件 -->
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/main.js"></script>
