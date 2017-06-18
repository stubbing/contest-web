<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>上海市计算机应用能力大赛</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body onload="today()">
	<jsp:include page="UtilPages/header.jsp" />
	<div class="background-color">
		<div class="container">
			<div class="carousel slide carousel-size" id="carousel-871299">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-871299"></li>
					<li data-slide-to="1" data-target="#carousel-871299"></li>
					<li data-slide-to="2" data-target="#carousel-871299"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="img/img_bg_1.jpg" class="img-responsive center-block" />
						<div class="carousel-caption">
							<h2>
								第九届<BR />上海市计算机应用能力大赛
							</h2>
							<p>2016.10-2017.5</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/mainPage.jpg" class="img-responsive center-block" />
						<div class="carousel-caption">
							<h4>获奖同学接收颁奖</h4>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/mainPage-2.jpg" class="img-responsive center-block" />
						<div class="carousel-caption">
							<h4>获奖同学接收颁奖</h4>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#carousel-871299" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#carousel-871299" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>

	<div class="container">
		<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)">
		<div class="row clearfix">
			<div class="col-md-4 column" style="text-align: center">
				<h2>
					<span class="glyphicon glyphicon-comment">比赛新闻</span>
				</h2>
				<p>欢迎关注并了解比赛新闻</p>
				<p>
					<a class="btn" href="listNews.action">更多 »</a>
				</p>
			</div>
			<div class="col-md-4 column" style="text-align: center">
				<h2>
					<span class="glyphicon glyphicon-star">参赛报名</span>
				</h2>
				<p>加入计算机应用能力大赛</p>
				<p>
					<a class="btn" href="#">更多 »</a>
				</p>
			</div>
			<div class="col-md-4 column" style="text-align: center">
				<h2>
					<span class="glyphicon glyphicon-inbox">关于我们</span>
				</h2>
				<p>了解更多计算机应用能力大赛的相关信息</p>
				<p>
					<a class="btn" href="info.jsp">更多 »</a>
				</p>
			</div>
		</div>
	</div>

	<footer id="fh5co-footer" role="contentinfo">
	<div class="row copyright">
		<div class="col-md-12 text-center">
			<p>
				<small class="block">Copyright © 2017 Guo Haoming.All rights reserved.</small>
			</p>
		</div>
	</div>
	</footer>

	<script src="js/main.js"></script>
</body>
</html>