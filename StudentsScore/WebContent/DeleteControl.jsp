<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="top.houwing.bean.Anouncement, top.houwing.bean.StudentInfo, top.houwing.DB.DBUtil, java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Map<String,Anouncement>map=DBUtil.Amap;
		map.remove(request.getParameter("AnouncementNumber"));
	%>
	<h3>刪除成功</h3>
</body>
</html>