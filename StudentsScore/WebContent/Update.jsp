<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h3 align="center">公告修改頁面</h3>
	<hr>
	<h3 align="right">登陸用戶: <%=session.getAttribute("name") %></h3>
	<form action="UpdateControl.jsp">
	<table  align="center" border="1"width="500px">
		<tr>
			<td>
				公告編號
			</td>
			<td>
				<input type="text" name="AnouncementNumber" value="<%=request.getParameter("AnouncementNumber") %>">
			</td>
		</tr>
		<tr>
			<td>
				名稱
			</td>
			<td>
				<input type="text" name="Name" value="<%= request.getParameter("Name")%>">
			</td>
		</tr>
		<tr>
			<td>
				内容
			</td>
			<td>
				<input type="text" name="Content" value="<%= request.getParameter("Content")%>">
			</td>
		</tr>
		
		<tr>
			<td>
				<input type="submit" value="修改">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>