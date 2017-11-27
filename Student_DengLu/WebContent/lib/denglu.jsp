<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生登录</title>
</head>
<body style="background:url(file:///D:/360安全浏览器下载/439fc0d24d8883c0be00896f01474129.jpg)">
   <form name="form1" method ="post">
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
        </tr >
        <tr>
          <td>用户密码:</td>
          <td>
             <input type="password" name="password"/>
          </td>
        </tr>
        <tr align="center">
    			<td colspan="2">
    				<input type="submit" value="登录" onclick="document.form1.action='way.jsp';document.form1.submit();"/>
    				<input type="submit"  value="注册" onclick="document.form1.action='register.jsp';document.form1.submit();"/>
    			</td>
    		</tr>
    		</table>
    		</form>
</body>
</html>