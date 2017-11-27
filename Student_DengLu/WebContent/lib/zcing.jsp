<%@page import="HaHa.UserException"%>
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
	   <jsp:forward page="register.jsp"></jsp:forward>
	<%
   }
   Stuent user=new Stuent();
   user.setUsername(username);
   user.setPassword(password);
   StudentDao userDao=new StudentDao(); 
   try{
   userDao.zhuce(user);
%>
<body>
    注册成功！！<br>
    <a href="denglu.jsp">继续登录</a><br>
    <a href="register.jsp">继续注册</a><br>
 <%
   }catch(UserException e){
 %>
	   <h2 style ="color:red">发生错误 : <%=e.getMessage()%></h2>
	   <%
   }
	   %>
</html>