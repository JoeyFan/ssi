<%@page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@page import="com.yidog.Constants"%>
<!-- left.jsp -->
		<div id="app" class="lt">
			<h3>应用程序</h3>
			<img src="http://<%=Constants.domain_sns%>/images/new_small.gif" style="position:absolute;margin:8px 0 0 68px;"/>
			<ul>
				<li class="irun appli"><a href="http://<%=Constants.domain_sns%>/st/PreMap">遛狗</a></li>
				<li class="ilove appli"><a href="http://<%=Constants.domain_sns%>/st/PreMarriage">结婚</a></li>
				<li class="ido appli"><a href="http://<%=Constants.domain_sns%>/st/PreMiniBlogList">围脖</a></li>
				<li class="iblg appli"><a href="http://<%=Constants.domain_sns%>/st/PreBlogList">日记</a></li>
				<li class="ifoto appli"><a href="http://<%=Constants.domain_sns%>/st/PrePhotoCategoryList">照片</a></li>
				<li class="ipet appli"><a href="http://<%=Constants.domain_sns%>/st/PreDogRankFriend">排名</a></li>
				<li class="ipay appli"><a href="http://<%=Constants.domain_pay%>">充值</a></li>
				<li class="ihelp appli"><a href="http://<%=Constants.domain_sns%>/st_pass/Help">帮助</a></li>
				<li class="isug appli"><a href="http://<%=Constants.domain_sns%>/st/PreFeedback">反馈</a></li>
				<%-- 
				<li class="ipet appli"><a href="/st/PreDogInfo">狗狗</a></li>
				<li class="iapp appli"><a href="#">管理应用</a></li>
				--%>
			</ul>
		</div>