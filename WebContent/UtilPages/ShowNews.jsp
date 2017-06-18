<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="bean.News"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	List<News> list = (List<News>) session.getAttribute("newslist");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	News news = (News) session.getAttribute("news");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${news.title }</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="<%=basePath%>/css/style.css">
<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.css">
<link rel="stylesheet" href="<%=basePath%>/css/news-style.css">
</head>
<body onload="today()">
	<jsp:include page="header.jsp" />
	<div class="maincontent">
		<div class="container">
			<div class="content">
				<h1 class="text-center">${news.title }</h1>
				${news.content }
			</div>
		</div>
	</div>
</body>
</html>