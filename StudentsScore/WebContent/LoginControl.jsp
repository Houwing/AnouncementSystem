<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="top.houwing.bean.Anouncement, top.houwing.bean.StudentInfo, top.houwing.DB.DBUtil, java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String account=request.getParameter("account");
		String password=request.getParameter("password");
		StudentInfo s=new StudentInfo(account,null,password);
		boolean flag=DBUtil.selectStudentByStudentnumberAndPassword(s);
		
		if(flag==true){
			Map<String,Anouncement>Amap=DBUtil.Amap;
			StudentInfo LoginStudent=DBUtil.map.get(DBUtil.getKey(s));
			String name=LoginStudent.getName();
			session.setAttribute("name", name);
	%>
	<h3 align="right">登陸用戶: <%=session.getAttribute("name") %></h3>
	<h3 align="center">學生公告頁面</h3>
	<hr>
	<table align="center" border="1" width="500px">
		<tr>
			<td>
				編號
			</td>
			<td>
				名稱
			</td>
			<td>
				内容
			</td>
		</tr>
		<%
			for(String key:Amap.keySet()){
				Anouncement amap=Amap.get(key);
		%>
			<tr>
				<td>
					<%=amap.getAnouncementNumber() %>
				</td>
				<td>
					<%=amap.getName() %>
				</td>
				<td>
					<%=amap.getContent() %>
				</td>
				<td>
					<a href="DeleteControl.jsp?AnouncementNumber=<%=amap.getAnouncementNumber()%>">刪除</a>
				</td>
				<td>
					<a href="Update.jsp?AnouncementNumber=<%=amap.getAnouncementNumber()%>&Name=<%=amap.getName() %>&Content=<%=amap.getContent() %>">修改</a>
				</td>
			</tr>
		<%
			}
		%>
	</table>
	
	<%
		}else{
			out.print("失敗");
		}
		
	%>
	

</body>
</html>