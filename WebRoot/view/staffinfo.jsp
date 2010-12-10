<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.row {BACKGROUND-COLOR: expression(rowIndex%2==1?'':'#F5F5F5')} 
	</style>
  </head>
  <body>
  内容:
  <table>
  <logic:present name="staff" scope="request">
  	<tr class="row">
  		<bean:write name="staff" property="staffId"/>
  	</tr>
  	<tr>
  		<bean:write name="staff" property="deptId"/>
  	</tr>
  	<tr>
  		<bean:write name="staff" property="staffName"/>
  	</tr>
  	<tr>
  		<bean:write name="staff" property="cardId"/>
  	</tr>
  </logic:present>
  </table>
  </body>
</html>
