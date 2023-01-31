<%@page import="com.jsp.Student"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<link rel="stylesheet" href="table.css" />
</head>
<body>
<% Student s =(Student)session.getAttribute("view"); %>
<h2>Student Details</h2>
	<div class="table-wrapper">
		<table cellpadding="20px" border="1" class="fl-table">
			<thead>
        <tr>
            <th>id</th>
			<th>name</th>
			<th>stream</th>
			<th>fees</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%= s.getId() %></td>
			<td><%= s.getName() %></td>
			<td><%= s.getStream() %></td>
			<td><%= s.getFees() %></td>
        </tr>
		</tbody>	

</table>
	
	</div>



</body>
</html>