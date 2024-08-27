<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Establish a database connection
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    String dbURL = "jdbc:mysql://localhost:3306/tiffin";
    String dbUser = "root";
    String dbPass = "sanket";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        stmt = conn.createStatement();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    // Retrieve user data from the database
    String query = "SELECT * FROM user";
    rs = stmt.executeQuery(query);
%>
<html>
<head>
	<title>Admin Page</title>
</head>
<body>
	<h1>User Data</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Address</th>
			<th>Action</th>
		</tr>
		<%
			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=name%></td>
			<td><%=email%></td>
			<td><%=phone%></td>
			<td><%=address%></td>
			<td>
				<a href="edit_user.jsp?id=<%=id%>">Edit</a>
			</td>
		</tr>
		<%
			}
			
		%>
	</table>
	<h1>Add Menu Item</h1>
	<form action="add_menu_item.jsp" method="post">
		<label for="name">Name:</label>
		<input type="text" name="name" id="name"><br>
		<label for="description">Description:</label>
		<textarea name="description" id="description"></textarea><br>
		<label for="price">Price:</label>
		<input type="text" name="price" id="price"><br>
		<input type="submit" value="Add">
	</form>
	<h1>Order History</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>User</th>
			<th>Menu Item</th>
			<th>Price</th>
			<th>Date</th>
		</tr>
		<%
			// Retrieve order data from the database
			query = "SELECT * FROM orders";
			rs = stmt.executeQuery(query);
			while (rs.next()) {
				String id = rs.getString("id");
				String userId = rs.getString("user_id");
				String menuItem = rs.getString("menu_item");
				String price = rs.getString("price");
				String date = rs.getString("date");
				// Retrieve user data for the order
				q = "SELECT * from orders";
				 rs = stmt.executeQuery();
				 %>
				 <html>
				 <head>
				 	<title>Admin Page</title>
				 </head>
				 <body>
				 	<h1>User Data</h1>
				 	<table>
				 		<tr>
				 			<th>ID</th>
				 			<th>userId</th>
				 			<th>Email</th>
				 			<th>Phone</th>
				 			<th>Address</th>
				 			<th>Action</th>
				 		</tr>
				 		<%
				 			while (rs.next()) {
				 				String id = rs.getString("id");
				 				String name = rs.getString("name");
				 				String email = rs.getString("email");
				 				String phone = rs.getString("phone");
				 				String address = rs.getString("address");
				 		%>
				 		<tr>
				 			<td><%=id%></td>
				 			<td><%=name%></td>
				 			<td><%=email%></td>
				 			<td><%=phone%></td>
				 			<td><%=address%></td>
				 			<td>
				 				<a href="edit_user.jsp?id=<%=id%>">Edit</a>
				 			</td>
				 		</tr>
				 		<%
				 			}
				 			rs.close();
				 			stmt.close();
				 			conn.close();
				 		%>
				 		
				 				
				 		
				 		
				 		
				 		
