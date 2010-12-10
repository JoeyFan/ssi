<%@page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@page import="com.yidog.Constants"%>
<%@page import="com.yidog.services.cache.CounterServices"%>
<%@page import="com.yidog.utils.CookieUtil"%>
<%@page import="com.yidog.CookieName"%>
<%@page import="com.yidog.ConstantsWeb"%>
<!-- top.jsp -->
<div id="hd">
	<div class="wp">
		<h1 class="lt"><a href="http://<%=Constants.domain_sns%>">狗宝贝</a></h1>
		<ul class="nav lt">
			<li class="toindex lt"><a href="http://<%=Constants.domain_sns%>/st/PreMyProfile">首页</a></li>
			<li class="toprf lt"><a href="http://<%=Constants.domain_sns%>/st/PreProfile">个人主页</a></li>
			<li class="tofrd lt"><a href="http://<%=Constants.domain_sns%>/st/PreMyFriendList">好友</a></li>
			<li class="tomsg lt"><a href="http://<%=Constants.domain_sns%>/st/PreInShortMessageList">短消息</a></li>
			<!--<li class="tonotf lt"><a href="http://<%=Constants.domain_sns%>/st/PreSysInfoList?queryScope=all">通知</a></li>-->
			<li class="tonotf lt"><a href="http://<%=Constants.domain_sns%>/st/PreMessageCenter">通知</a>
			<%
				int msgNum = CounterServices.getNewMessageTotal(CookieUtil.getCookieLong(request, CookieName.COOKIE_USER_ID)); 
				if(msgNum>0){
			%><em class="newmsg lt"><i class="lt"><%=CounterServices.getNewMessageTotal(CookieUtil.getCookieLong(request, CookieName.COOKIE_USER_ID))%></i></em><%
				}
			%>
			
			</li>
		</ul>
		<div class="subnav rt">
		<span id="loginNo" style="display:none;">
			<a href="http://<%=Constants.domain_sns%>/st_pass/PreAccountRegisterNew">注册</a>
			<a href="http://<%=Constants.domain_sns%>/st_pass/PreLogin">登录</a>
			<a href="http://<%=Constants.domain_sns%>/st_pass/PrePwdFind">密码找回</a>
		</span>
		<span id="loginYes" style="display:none;">
			<a href="http://<%=Constants.domain_user%>/st/PreMyInvite" target="_blank">邀请</a>
			<a href="http://<%=Constants.domain_sns%>/st/PreFriendFind">找人</a>
			<a href="http://<%=Constants.domain_sns%>/st/PreAccountInfoModify">设置</a>
			<a href="http://<%=Constants.domain_sns%>/st_pass/DoLogout" onclick="return confirm('确认退出？');">退出</a>
			<c:if test="${isLogin==true&&isAdmin==true}">
				<a href="http://<%=Constants.domain_sns%>/st_admin/PreAllUserInfo" target="_blank">头像审核</a>
				<script type="text/javascript" src="http://<%=Constants.domain_user%>/js/jquery/ui/jquery-ui-1.7.2.custom.min.js?<%=ConstantsWeb.WEB_VER_SNS%>"></script>
				<script type="text/javascript" src="http://<%=Constants.domain_sns%>/view/admin/allUserHeadPhoto.js?<%=ConstantsWeb.WEB_VER_SNS%>"></script>
				<script type="text/javascript">
					if(document.location.href.indexOf("/st/PreProfile?uid=")>0){
						document.writeln('<a href="javascript:void(0)" onclick="doSetHeadPhotoType(${user.id},1);window.location.reload();">设为真人</a>');
					}
				</script>
				<a href="http://<%=Constants.domain_sns%>/st_admin/PreFeedbackList" target="_blank">反馈管理</a>
			</c:if>
		</span>
		<script type="text/javascript">
			if(getCookie(COOKIE_USER_ID)!=null){//登陆了
				//document.write('您好！ ' + getCookie(COOKIE_USER_NAME));
				$("#loginYes").show();
				$("#loginNo").hide();
			}else{
				$("#loginNo").show();
				$("#loginYes").hide();
			}
		</script>
		</div>
	</div>
</div>