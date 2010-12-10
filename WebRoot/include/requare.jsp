<%@page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@page import="com.yidog.Constants"%>
<%@page import="com.yidog.ConstantsWeb"%>
<%@include file="/inc/taglib.jsp"%>
<%-- 以下几个是整个网站都共用的 css 代码 --%>
<link rel="stylesheet" type="text/css" href="http://<%=Constants.domain_sns%>/css/style.css?<%=ConstantsWeb.WEB_VER_SNS%>4"/>
<%-- 引入 artDialog 组件 chrome风格的弹出框css --%>
<link id="artDialogSkin" href="http://<%=Constants.domain_user%>/js/jquery/confirm/skin/chrome/chrome.css?<%=ConstantsWeb.WEB_VER_SNS%>" rel="stylesheet" type="text/css" />
<%@include file="/inc/requareJs.jsp"%>