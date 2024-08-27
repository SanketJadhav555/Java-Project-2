<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String  u=request.getParameter("username");
   String p=request.getParameter("password");
   
   if(u.equals("roshan")||p.equals("Roshan@123"))
   {  
%>
<jsp:forward page="Index.html"></jsp:forward>
<%
   }
else
{
 out.print("Invalide Credintials.....................");

%>
<jsp:include page="login.jsp"></jsp:include>
<%} %>
</body>
</html>