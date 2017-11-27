<%@page import="HaHa.StudentDao"%>
<%@page import="HaHa.Stuent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String username =request.getParameter("username");
String password =request.getParameter("password");
if(username==null||"".equals(username.trim())){
	   request.setAttribute("error", "用户名不能为空！");
	   %>
	   <jsp:forward page="denglu.jsp"></jsp:forward>
	<%
}
Stuent stuent=new Stuent();
stuent.setUsername(username);
stuent.setPassword(password);
StudentDao studentDao=new StudentDao();
if(studentDao.denglu(stuent))
{
	 %>
	   <jsp:forward page="success.jsp"></jsp:forward>
	<%
}
else
{
	 %>
	   <jsp:forward page="file.jsp"></jsp:forward>
	<%
}
%>

</html>