<%@page import="top.houwing.DB.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="top.houwing.bean.Anouncement, top.houwing.bean.StudentInfo, java.util.Map,java.util.HashMap"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Map<String,Anouncement>map=DBUtil.Amap;
		Anouncement a=map.get(request.getParameter("AnouncementNumber"));
		a.setContent(request.getParameter("Content"));
		a.setName(request.getParameter("Name"));
	%>
	<h3>修改<%=request.getParameter("AnouncementNumber") %>信息成功</h3>
	
</body>
</html>