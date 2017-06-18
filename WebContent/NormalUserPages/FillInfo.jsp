<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="bean.Normaluser"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>普通用户管理</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/bootstrapValidator.min.css">
<%
	Normaluser user = (Normaluser) session.getAttribute("login");
%>
<%!public String change(String s) {
		if (s != null) {
			return s;
		}
		return "";
	}%>
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
								<a href="FillInfo.jsp">个人信息填写/修改</a>
							</li>
							<li>
								<a href="initEnroll.action">报名比赛/修改报名信息</a>
							</li>
							<li>
								<a href="ModifyPassword.jsp">修改密码</a>
							</li>
						</ul>
					</nav>
				</div>

				<div class="col-xs-5 column">
					<s:form class="form-horizontal" role="form" method="post" action="fillInfo" id="fillinfo">
						<div class="form-group">
							<label class="col-sm-4 control-label">姓名</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="name" required="required"
									value="<%=change(user.getName())%>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">性别</label>
							<div>
								<label class="checkbox-inline">
									<input type="radio" id="man" name="sex" value="1" >
									男
								</label>
								<label class="checkbox-inline">
									<input type="radio" id="women" name="sex" value="0">
									女
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
							<label class="col-sm-4 control-label">年级</label>
							<div>
								<label class="checkbox-inline">
									<select class="form-control" name="grade" id="grade">
										<option value="1">大一</option>
										<option value="2">大二</option>
										<option value="3">大三</option>
										<option value="4">大四</option>
									</select>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">专业</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="major" required="required"
									value="<%=change(user.getMajor())%>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">学院</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="college" required="required"
									value="<%=change(user.getCollege())%>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">身份证号</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="id" required="required"
									value="<%=change(user.getId())%>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">学号</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="sno" required="required"
									value="<%=change(user.getSno())%>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">联系电话</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="phone" required="required"
									value="<%=change(user.getPhone())%>">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label">EMAIL</label>
							<div class="col-sm-7">
								<input type="email" class="form-control" name="email" required="required"
									value="<%=change(user.getEmail())%>">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<label class="checkbox-inline">
									<input type="submit" value="提交"  class="btn btn-default">
								</label>
								<label class="checkbox-inline">
									<input type="reset" value="重置"  class="btn btn-default">
								</label>
							</div>
						</div>
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
    $(function() {
	$(":radio[name='sex'][value='<%=user.getSex()%>']").prop("checked", "checked");
	$("#school option[value='<%=user.getUniversityNo()%>']").attr("selected","selected");
	$("#grade option[value='<%=user.getGrade()%>']").attr("selected","selected");
	});
    </script>

	<script src="../js/main.js"></script>
	<script src="../js/bootstrapValidator.min.js"></script>
	<script src="../js/validator/fillInfoValidator.js"></script>

</body>
</html>