<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>比赛信息</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/news-style.css">
</head>
<body onload="today()" data-spy="scroll" data-target="#myScrollspy">
	<jsp:include page="UtilPages/header.jsp" />
	<div class="maincontent">
		<div class="container">
			<div class="row clearfix">
				<div class="col-xs-2 column" id="myScrollspy">
					<nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix">
					<ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
						<li>
							<a href="#section-1" class="editor">比赛通知</a>
						</li>
						<li>
							<a href="#section-2" class="elements">实施细则</a>
						</li>
						<li>
							<a href="#section-3" class="widgets">重要信息及下载</a>
						</li>
					</ul>
					</nav>
				</div>

				<div class="col-xs-8 column">

					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)" id="section-1">
					<br />
					<!--mian information of the competion-->

					<h1 class="text-center">关于举办2017年（第九届）上海市大学生</h1>
					<h1 class="text-center">计算机应用能力大赛的通知</h1>
					<div class="content">
						<p>各高校教务处、计算机教育负责人：</p>
						<p>
							为贯彻落实教育部关于深入推进创新创业教育改革的有关要求，调动大学生学习计算机技术的积极性，提高大学生运用信息技术解决实际问题的综合水平，培养大学生的创新创业能力和团队精神，培养大众创业万众创新生力军，现决定举办2017年（第九届）上海市大学生计算机应用能力大赛。现将有关事项通知如下：</p>
						<h2 background="content_02.gif">一．组织机构</h2>
						<p>大赛由组织委员会负责指导大赛的组织和宣传等工作；大赛评审委员会负责大赛的全部评审和会务等工作。</p>
						<h2>二．竞赛时间</h2>
						<p>2016年10月至2017年5月。</p>
						<h2>三．参赛对象</h2>
						<p>上海各高校在校本科学生，以组队方式参加大赛，以学校为单位组织报名、参赛，具体实施参见附录“2017年（第九届）上海市大学生计算机应用能力大赛实施细则”。</p>
						<h2>四．大赛网站及办公室</h2>
						<p>2017年度大赛设专用网站和办公室：</p>
						<p>
							大赛网站： <strong>http://202.120.165.61/contest</strong>
						</p>
						<p>
							大赛邮箱：<strong>jsjdasai@shiep.edu.cn</strong>、<strong>shjsj@tongji.edu.cn</strong>
						</p>
						<p>大赛办公室设在上海电力学院杨浦校区，地址：</p>
						<address>
							上海市平凉路2103号上海电力学院教务处老行政楼305室<br />邮编：200090<br />联系电话：35303885
						</address>
						<p>希望各高校积极宣传、认真组织学生参赛，通过竞赛培养学生的创新能力和团队协作精神，提高学生解决实际问题的能力。</p>
					</div>
					<div class="foot">
						<p>
							上海市大学生计算机应用能力大赛组委会<br> 上海市教育委员会高教处
						</p>
						<p>2016年10月</p>
					</div>

					<!--end of the main information-->
					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)" id="section-2">
					<br />
					<!--details of the competition<-->

					<div>
						<h1 class="text-center">2017年（第九届）上海市大学生计算机应用能力大赛实施细则</h1>
					</div>
					<div class="content">
						<p>在贯彻落实教育部关于创新高校人才培养机制的活动中，以提高大学生计算机应用能力为主要目标的计算机基础教学得到了各高校的高度重视；为进一步激励上海大学生学习计算机知识和技能的积极性，提高运用信息技术解决实际问题的综合能力，培养创新能力及团队合作精神，不断丰富学生课外创新性实践教育体系，在总结前八届上海市大学生计算机应用能力大赛的基础上，继续举办第九届上海市大学生计算机应用能力大赛。大赛同时为各高校选拔推荐参加中国大学生计算机设计大赛的作品。</p>
						<h2 background="content_02.gif">一、大赛组织机构</h2>
						<p>大赛在上海市教育委员会和上海市经济与信息化委员会的指导下，依托上海市高等学校计算机等级考试委员会和上海市高等学校计算机等级考试命题组，成立大赛组委会和评审委员会。</p>
						<h3>1．大赛组委会</h3>
						<p>顾 问：胡启迪 邵志清 邱高</p>
						<p>主 任：郭为禄</p>
						<p>副主任：傅建勤&nbsp;顾春华</p>
						<p>委&nbsp;&nbsp;&nbsp;员：王光东 王晓国 朱坚民 李康弟 吴静怡 陈敏 周荣玲 赵丽霞 姚卫新 黄婕 雷启立</p>
						<p>秘&nbsp;&nbsp;&nbsp;书：赵丽霞（兼）</p>
						<h3>2．评审委员会</h3>
						<p>主&nbsp;&nbsp;&nbsp;任：龚沛曾</p>
						<p>常务副主任：顾春华</p>
						<p>副主任：杨志强&nbsp; 刘晓强&nbsp; 陆 铭&nbsp; 郑 骏&nbsp; 夏 耘&nbsp; 徐方勤&nbsp; 胡巧多&nbsp; 许华虎</p>
						<p>
							委&nbsp;&nbsp;&nbsp;员：王占全 &nbsp;车立娟&nbsp; 陈海建 &nbsp;陈章进 &nbsp;陈志云&nbsp; 杜 明 &nbsp;冯佳昕&nbsp;
							顾顺德 &nbsp;顾振宇<br> 韩冬梅 &nbsp;黄冬梅 &nbsp;黄林鹏 &nbsp;蒋 博 &nbsp;蒋川群 &nbsp;李东方 &nbsp;李君丽
							&nbsp;李湘梅 &nbsp;李智敏<br> 刘 江&nbsp; 刘 琴 &nbsp;佘 俊 &nbsp;宋 晖 &nbsp;苏前敏 &nbsp;吴爱华 &nbsp;向珏良
							&nbsp;徐安东 &nbsp;叶文珺<br> 袁科萍 &nbsp;臧劲松 &nbsp;张向东 &nbsp;朱 敏
						</p>
						<p>企业委员：施建刚&nbsp; 常庆红</p>
						<p>秘书处：王 能&nbsp; 叶文珺&nbsp; 肖 杨</p>
						<h2 background="content_02.gif">二、大赛实施方案</h2>
						<h3>1．参赛作品</h3>
						<p>参赛作品选题范围不限（除企业合作项目外），鼓励作品的创新性，也鼓励计算机技术在其他各专业中应用的选题，所提交作品应能充分展示学生的计算机应用能力。参赛作品归为以下五类：</p>
						<p>(1) 数据库应用系统（含大数据应用）</p>
						<p>(2) Web网站设计</p>
						<p>(3)多媒体制作（含虚拟实验、微课程）</p>
						<p>(4) 程序设计应用（含移动应用）</p>
						<p>(5) 企业合作项目、软件服务外包（题目见竞赛网站）</p>
						<p>(6) 智慧城市（海峡两岸大学生创新大赛作品，细则见竞赛网站）</p>
						<p align="left">
							作品要求：<br> (1) 学生在报名参赛时，根据项目的主要技术选择参赛类别。类别选择时请仔细阅读大赛各类别的评分标准（详见大赛网站）。 <br> (2)
							鼓励在竞赛作品中使用国产软件。 <br> (3) 参赛作品是学生在课程学习或自主学习的成果总结，应该由参赛队员独立完成。若引用开源代码和第三方工具，必须在<strong>设计说明书</strong>中详细说明开源工具来源、工具所完成的功能和参赛队伍开发实现的功能。制作版权问题责任自负。
							<br> 备注：企业合作项目提供软件培训，具体安排见网站通知，软件服务外包要求参照全国计算机设计大赛。
						</p>
						<h3>2．参赛对象</h3>
						<p>参赛对象为上海市高校本科学生，自由组队参赛，每队1-3位学生组成（指导老师1-2人）；每个类别每校不得超过15个队。</p>
						<p>注意：除2015级、2016级参赛队伍外，每支参赛队伍至少有一名队员需要具有计算机等级考试证书（一、二、三级任意级别），报送作品时提交证书复印件。</p>
						<h3>3．递交作品要求</h3>
						<p>参赛作品必须为原创作品，作品提交内容包括作品情况表、原创承诺书、设计说明书、作品展示视频、系统安装包/可执行文件/可播放文件、源程序代码（源文件）、电子版的参赛成员（每位）两寸彩色证件照片、报名缴费凭证（每校一份）。相关模板可从竞赛网站上下载，提交的文档应按规范命名，具体要求见下表，网上报名时将产生参赛编号，用于相关文档的制作。</p>
						<p align="left" class="STYLE4">注意：</p>
						<p align="left" class="STYLE4">① 各文档必须按要求认真撰写并提交，否则影响成绩。</p>
						<p align="left" class="STYLE4">②
							Web类别作品、其他类别中的Web形式作品必须自建好网站，在大赛参赛表中准确填写超链接，并保证评审期间能够流畅访问。</p>
						<p align="left" class="STYLE4">
							③ <span class="STYLE4">所使用的特殊开发工具和中间件必须随作品刻在光盘中一起提交。 </span>
						</p>
						<p align="center">
							<img src="img/2016.jpg" alt="" width="571" height="601">
						</p>
						<h3>4．报名与作品提交</h3>
						<p>
							<strong>（1）学校联络人确认：</strong>参赛学校在指定日期前上报学校联络人信息。
						</p>
						<p align="left">
							<strong>（</strong><strong>2</strong><strong>）参赛报名：</strong>参赛队伍在规定报名时间内，由学校联系人统一登录到竞赛网站报名。每校每类型（5个类型）参赛队不超过15个。
						</p>
						<p align="left">
							<strong>（</strong><strong>3</strong><strong>）交费：</strong>由学校在规定时间内统一交纳参赛报名费，每个参赛队200元，请汇至以下账户（汇款时，请<strong>注明参赛学校、组数、上海市计算机大赛报名费</strong>，不接受个人缴费）：
							<br> 户名：上海电力学院 <br> 账号：03370400801042136<br> 开户行：农行上海昆明路支行
						</p>
						<p align="left">
							<strong>（</strong><strong>4</strong><strong>）作品递交：</strong>所有参赛作品均请刻录成光盘（CD/DVD）后于2017年3月28日前寄送到大赛办公室（地址：上海市平凉路2103号上海电力学院教务处老行政楼305室，邮编：200090；联系人：王能
							康保超；联系电话：35303885）。作品递交时须附报名缴费单据复印件。<br> 竞赛网站： <strong>http://202.120.165.61/contest</strong>
							<br> 电子邮箱： <strong>jsjdasai@shiep.edu.cn</strong><strong>、</strong><strong>shjsj@tongji.edu.cn</strong><strong>
							</strong>
						</p>
						<h3>5．评奖与奖励</h3>
						<p>初赛： 评审专家按学校类别分类择优推选进入决赛的作品。</p>
						<p>决赛： 现场演示并答辩，获奖作品网上公示。</p>
						<p>大赛设一等奖、二等奖、三等奖和优胜奖，获奖作品将同时获上海市教育委员会和上海市大学生计算机应用能力大赛组委会颁发的获奖证书及奖牌；获奖作品推荐参加2017年中国大学生计算机设计大赛决赛；智慧城市类别的队伍将择优推荐参加2017年（第四届）海峡两岸创新作品赛。</p>
						<h3>6．竞赛时间安排</h3>
						<p>
							<strong>学校联络人确认截止：</strong><strong>2016年11月15日</strong>
						</p>
						<p>
							<strong>网上报名：</strong><strong>2016年12月01日到2017年1月15日</strong>
						</p>
						<p>
							<strong>作品提交：2017年03月20日到03月28日</strong>
						</p>
						<p>
							<strong>报名费汇款期限：2017年03月20日到03月28日</strong>
						</p>
						<p>
							<strong>初 赛：2017年04月08日到04月09日</strong>
						</p>
						<p>
							<strong>决 赛：2017年04月15日到04月16日</strong>
						</p>
						<p>
							<strong>颁 奖：2017年5月</strong>
						</p>
					</div>
					<div class="foot">
						<p>
							上海市大学生计算机应用能力大赛组委会<br> 2016年10月
						</p>
					</div>
					<hr size="2">
					<br>
					<p align="center" class="STYLE1">
						<strong>2017年(第九届)上海市大学生计算机应用能力大赛学校联络人回执</strong>
					</p>
					<p align="left" class="STYLE3">
						如果贵校将组织学生参加本次竞赛，请填写以下回执，并于2016年11月15日之前邮件发送到
						<a href="mailto:jsjdasai@ecnu.edu.cn">jsjdasai@shiep.edu.cn</a>
						和shjsj@tongji.edu.cn，以便为诸位开通网上报名账号。
					</p>
					<table width="621" height="64" border="1" align="center" cellspacing="0" bordercolor="#0000FF">
						<tbody>
							<tr>
								<td width="97" valign="middle"><p align="center" class="STYLE3">学校</p></td>
								<td width="76" valign="middle"><p align="center" class="STYLE3">姓名</p></td>
								<td width="65" valign="middle"><p align="center" class="STYLE3">部门</p></td>
								<td width="81" valign="middle"><p align="center" class="STYLE3">固定电话</p></td>
								<td width="105" valign="middle"><p align="center" class="STYLE3">移动电话</p></td>
								<td width="171" valign="middle"><p align="center" class="STYLE3">电子邮箱</p></td>
							</tr>
							<tr>
								<td valign="middle">&nbsp;</td>
								<td valign="middle">&nbsp;</td>
								<td valign="middle">&nbsp;</td>
								<td valign="middle">&nbsp;</td>
								<td valign="middle">&nbsp;</td>
								<td valign="middle">&nbsp;</td>
							</tr>
						</tbody>
					</table>
					<p align="left" class="STYLE3">&nbsp;</p>

					<!--end of the detail of the competition-->
					<hr style="border-top: 1px ridge rgba(6, 3, 9, 0.47)" id="section-3">
					<br />
					<!--important information-->

					<div>
						<h1 class="text-center">关于举办2017年（第九届）上海市大学生</h1>
						<h1 class="text-center">计算机应用能力大赛的重要信息</h1>
						<p align="left" class="STYLE5">
							下载：
							<a href="2017/xx-2017001-作品情况表.doc" target="_blank" class="YYYY">
								<font color="0000FF">作品情况表</font>
							</a>
							、
							<a href="2017/××-2017001-原创承诺书.doc" target="_blank">
								<font color="0000FF">原创承诺书</font>
							</a>
							、
							<a href="2017/××-2017001-设计说明书——多媒体类.doc" target="_blank">
								<font color="0000FF">多媒体类作品设计说明书</font>
							</a>
							、
							<a href="2017/××-2017001-设计说明书——非多媒体类.doc" target="_blank">
								<font color="0000FF">非多媒体类作品设计说明书</font>
							</a>
							、
							<a href="2017/xx-2017001-作品小结.doc" target="_blank">
								<font color="0000FF">作品小结</font>
							</a>
						</p>
					</div>
					<div class="content">
						<h2 background="content_02.gif">一．报 名</h2>
						<p>各高校学生不能直接在本网站报名，需要到各学校的大赛联系人报名，然后统一在本网站报名。</p>
						<strong>参加全国大赛的队伍必须参加上海市大赛</strong>
						<h2>二．作品递交</h2>
						<h3>1 递交方式：</h3>
						<p>所有参赛作品均请刻录成光盘（CD/DVD）后于2017年3月28日前寄送到大赛办公室（地址：上海市平凉路2103号上海电力学院教务处老行政楼305室，邮编：200090；联系人：王能、康保超；联系电话：35303885）。作品递交时须附报名缴费单据复印件。</p>
						<h3>2 递交时间：</h3>
						<p>
							<strong>2017年03月20日</strong><strong>到03月28日</strong>
						</p>
						<h2>三．大赛网站及办公室</h2>
						<p>2017年度大赛设专用网站和办公室：</p>
						<p>
							大赛网站： <font color="#a50021" size="2px"><strong>http://202.120.165.61/contest</strong></font>
						</p>
						<p>
							大赛邮箱：<strong>jsjdasai@shiep.edu.cn</strong>、<strong>shjsj@tongji.edu.cn</strong>
						</p>
						<p>大赛办公室设在上海电力学院杨浦校区，地址：</p>
						<address>
							上海市平凉路2103号上海电力学院教务处老行政楼305室<br />邮编：200090<br />联系电话：35303885
						</address>
						<br>
						<p>希望各高校积极宣传、认真组织学生参赛，通过竞赛培养学生的创新能力和团队协作精神，提高学生解决实际问题的能力。</p>
					</div>
					<div class="foot">
						<p>
							上海市大学生计算机应用能力大赛组委会<br> 上海市教育委员会高教处
						</p>
						<p>2016年10月</p>
					</div>
				</div>
				<!--end of the important information-->
			</div>
		</div>
	</div>
	</div>

	<footer id="fh5co-footer" role="contentinfo">
	<div class="row copyright">
		<div class="col-md-12 text-center">
			<p>
				<small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small> <small class="block">作者：郭浩明</small>
			</p>
		</div>
	</div>
	</footer>

	<script src="js/main.js"></script>
</body>
</html>