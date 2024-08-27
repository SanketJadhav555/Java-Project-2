<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
String uname=request.getParameter("username");
String pass=request.getParameter("password");
String email=request.getParameter("email");
String confirm_password=request.getParameter("confirm_password");

ResultSet rs=null;
PreparedStatement ps=null;
Connection con=null;
String q="insert into user values(?,?,?,?)";
Class.forName("com.mysql.jdbc.Driver");
con= DriverManager.getConnection("jdbc:mysql://localhost:3306/tiffin","root","sanket");
ps=con.prepareStatement(q);
ps.setString(3, email);
ps.setString(1, uname);
ps.setString(2, pass);
ps.setString(4,confirm_password);

int i=ps.executeUpdate();

if(i>0){
	out.print("Register Successfully");
  %>
    <jsp:include page="login.jsp"></jsp:include>
  
  <%}
else {
	out.print("Fail To Register...");
	
%><jsp:include page="Register.jsp"></jsp:include>
<%
}%>
</body>
</html>