<%@page import="HaHa.UserException"%>
<%@page import="HaHa.StudentDao"%>
<%@page import="HaHa.Stuent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>账号注册</title>
</head>
<body>
<form action="zcing.jsp" method ="post">
<% 
if(request.getAttribute("error")!=null||"".equals(request.getAttribute("error")))
    {
	   %>
	   <%=request.getAttribute("error") %>
	   <%
    }
   %>
   <table align="center" >
        <tr>
          <td>用户名称:</td>
          <td>
             <input type="text" name="username"/>
          </td>
        </tr>
        <tr>
          <td>用户密码:</td>
          <td>
             <input type="password" name="password"/>
          </td>
        </tr>
        <tr align="center">
    			<td colspan="2">
    				<input type="submit" value="提交" />
    			</td>
    		</tr>
     </table>
     </form>
</body>
</html>