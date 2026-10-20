<%@page import="com.jsp.library.entity.Issue"%>
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
<%
List<Issue> list = (List<Issue>) request.getAttribute("list");
%>
<table border="2px">
<tr>
<th>STUDENT</th>
<th>BOOK</th>
<th>ISSUE DATE</th>
<th>RETURN DATE</th>
</tr>
<%
for(Issue issue: list)
{
%>
<tr>
<td><%= issue.getStudent().getName() %></td>
<td><%= issue.getBook().getName() %></td>
<td><%= issue.getIssueDate() %></td>
<td><%= issue.getReturnDate() %></td>
<td><%= issue.getStatus() %></td>
<%
if(issue.getStatus().equals("ISSUED"))
{
%>
<a href="returnBook?id=<%=issue.getBook().getId()%>">return</a>
<%
}
%>
</tr>
</table>
</body>
</html>