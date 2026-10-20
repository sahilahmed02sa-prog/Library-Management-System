<%@page import="com.jsp.library.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2> <a href="addBookpage">ADD BOOK</a> </h2>
<h2> <a href="">ADD STUDENT</a> </h2>
<h2> <a href="">VIEW ISSUE DETAILS</a> </h2>

<%
List<Book> list = (List<Book>)request.getAttribute("list");

%>

<table border= "2px">
<tr>
<th>NAME</th>
<th>AUTHOR</th>
<th>AVAILABLE COPIES</th>
</tr>

<%

for(Book book:list){
	
%>

<tr>
<td><%= book.getName() %></td>
<td><%= book.getAuthor() %></td>
<td><%= book.getAvailableCopies() %></td>
</tr>

<%
}
%>

</table>


</body>
</html>