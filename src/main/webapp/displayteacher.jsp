<%@page import="com.jsp.Teacher"%>
<%@page import="com.jsp.Student"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Details</title>
</head>
<body>
<% Teacher t =(Teacher)session.getAttribute("view"); %>

<table cellpadding="20px" border="1">
<th>id</th>
<th>name</th>
<th>subject</th>
<th>salary</th>


<tr>
<td><%= t.getId() %></td>
<td><%= t.getName() %></td>
<td><%= t.getSubject() %></td>
<td><%= t.getSalary() %></td>
</tr>

</table>
</body>
</html>