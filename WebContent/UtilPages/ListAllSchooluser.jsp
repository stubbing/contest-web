<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="bean.Schooluser"%>
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
				<th data-field="school">学校</th>
				<th data-field="name">姓名</th>
				<th data-field="phoen">电话</th>
				<th data-field="email">Email</th>
			</tr>
		</thead>
		<tbody>
			<%
				ResourceBundle res = ResourceBundle.getBundle("school");
				List<Schooluser> schooluserlist = (List<Schooluser>) session.getAttribute("schooluserlist");
				if (schooluserlist != null) {
					for (Schooluser i : schooluserlist) {
						out.print("<tr>");
						out.print("<td>" + res.getString(i.getSchooluserId()) + "</td>");
						out.print("<td>" + i.getName() + "</td>");
						out.print("<td>" + i.getPhone() + "</td>");
						out.print("<td>" + i.getEmail() + "</td>");
						out.print("</tr>");
					}
				}
			%>
		</tbody>
	</table>
</div>